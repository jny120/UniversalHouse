package tw.forum.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.forum.model.Article;
import tw.forum.model.ArticleService;
import tw.forum.model.Comment;
import tw.forum.model.CommentService;
import tw.forum.model.Status;
import tw.forum.model.StatusService;
import tw.member.model.Member;
import tw.member.model.MemberService;

@Controller
public class UserController {

	@Autowired
	private ArticleService aService;

	@Autowired
	private MemberService mService;

	@Autowired
	private StatusService sService;

	@RequestMapping("/toBoard/{pageNo}")
	public String toBoard(@PathVariable("pageNo") Integer pageNo, Model m) {

		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Article> page = aService.findByPublic(pageable);

		m.addAttribute("nowPage", pageNo);
		m.addAttribute("totalPages", page.getTotalPages());

		m.addAttribute("articles", page.getContent());

		List<Article> topViewArticles = aService.orderByViews();
		m.addAttribute("topViewArticles", topViewArticles);

		List<Article> likeArticles = aService.orderLikeArticle();
		m.addAttribute("likeArticles", likeArticles);

		return "forum/users/board";

	}

	@RequestMapping("/toBoard/searchResult/{pageNo}")
	public String toSearchResult(@RequestParam("search") String search, @PathVariable("pageNo") Integer pageNo,
			Model m) {

		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Article> page = aService.findByTitle(search, pageable);

		m.addAttribute("nowPage", pageNo);
		m.addAttribute("totalPages", page.getTotalPages());

		m.addAttribute("articles", page.getContent());

		List<Article> topViewArticles = aService.orderByViews();
		m.addAttribute("topViewArticles", topViewArticles);

		List<Article> likeArticles = aService.orderLikeArticle();
		m.addAttribute("likeArticles", likeArticles);

		return "forum/users/board";

	}

	@RequestMapping("/toBoard/{topicName}/{pageNo}")
	public String toTopic(@PathVariable("topicName") String topicName, @PathVariable("pageNo") Integer pageNo,
			Model m) {

		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Article> page = aService.findByStatusAndTopicName(topicName, pageable);

		m.addAttribute("nowPage", pageNo);
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("articles", page.getContent());

		List<Article> topViewArticles = aService.orderByViewsAndTopicName(topicName);
		m.addAttribute("topViewArticles", topViewArticles);

		List<Article> likeArticles = aService.orderLikeArticleAndTopicName(topicName);
		m.addAttribute("likeArticles", likeArticles);

		m.addAttribute("topicName", topicName);

		return "forum/users/board";
	}

	@RequestMapping("/frontPage")
	public String frontPage(Model m) {

		m.addAttribute("hotArticle", aService.orderByViews());
		m.addAttribute("newArticle", aService.orderByUpdateTime());
		m.addAttribute("likeArticle", aService.orderLikeArticle());

		return "forum/users/frontPage";

	}

	@RequestMapping("/newArticle")
	@ResponseBody
	public Article newArticle(@RequestParam("cover") @Nullable MultipartFile cover,
			@RequestParam("memberPk") Integer memberPk, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("status") String status, @RequestParam("quickInsert") String quickInsert, Model m)
			throws SQLException, IOException {
		Article article = new Article();

		article.setMemberPk(memberPk);
		article.setTopicName(topicName);
		article.setTitle(title);
		article.setContent(content);
		article.setThumbUp(0);
		article.setUnlike(0);
		article.setViews(0);
		article.setStatus(status);
		article.setViews(0);

		Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
		article.setUpdateTime(updateTime);

		if (quickInsert.equalsIgnoreCase("true")) {

			ByteArrayOutputStream os = new ByteArrayOutputStream();
			InputStream is = this.getClass().getResourceAsStream("/static/images/forum/OneClickAdd.png");

			byte[] buffer = new byte[1024];
			int length;
			while ((length = is.read(buffer)) != -1) {
				os.write(buffer, 0, length);
			}

			byte[] result = os.toByteArray();

			article.setCover(result);

		} else if (cover != null) {

			byte[] b = cover.getBytes();

			if (b.length < 3) {
				article.setCover(null);
			} else {
				article.setCover(b);
			}

		} else {

			article.setCover(null);

		}

		Article savedArticle = aService.save(article, mService.findByMemberPk(memberPk));

		return savedArticle;

	}

	@PostMapping("/updateArticle")
	@ResponseBody
	public Article updateArticle(@RequestParam("cover") @Nullable MultipartFile cover,
			@RequestParam("articleId") Integer articleId, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("status") String status, Model m) throws SQLException, IOException {

		Article article = aService.findById(articleId);

		Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
//		article.setUpdateTime(updateTime);

		article.setTopicName(topicName);
		article.setTitle(title);
		article.setContent(content);
		article.setStatus(status);

		if (!cover.isEmpty()) {

			byte[] b = cover.getBytes();
			article.setCover(b);

		} else {

			article.setCover(article.getCover());

		}

		return aService.updateById(article);

	}

	@RequestMapping("/showArticle/{topicName}/{articleId}")
	public String showArticle(@PathVariable("articleId") Integer articleId, @PathVariable("topicName") String topicName,
			Model m) {

		Article article = aService.findById(articleId);
		m.addAttribute("article", article);

		List<Article> topViewArticles = aService.orderByViewsAndTopicName(topicName);
		m.addAttribute("topViewArticles", topViewArticles);

		List<Article> likeArticles = aService.orderLikeArticleAndTopicName(topicName);
		m.addAttribute("likeArticles", likeArticles);

		return "forum/users/show";
	}

	@RequestMapping("/users/toNewArticle")
	public String toNewArticle() {

		return "forum/users/newArticle";
	}

//	----------------------------------------------------------------------------------------------------------------------------------------------
//	留言

	@Autowired
	private CommentService cService;

	@PostMapping("/newComment")
	@ResponseBody
	public Comment newComment(@RequestParam("articleId") Integer articleId, @RequestParam("memberPk") Integer memberPk,
			@RequestParam("content") String content, Model m) {

		Comment savedComment = new Comment();

		Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
		savedComment.setUpdateTime(updateTime);

		savedComment.setArticleId(articleId);
		savedComment.setMemberPk(memberPk);
		savedComment.setName(mService.findByMemberPk(memberPk).getName());
		savedComment.setContent(content);
		savedComment.setStatus("public");
		savedComment.setReplyId(0);

		return cService.save(savedComment, aService.findById(articleId));
	}

	@PostMapping("/newReply")
	@ResponseBody
	public Comment newReply(@RequestParam("articleId") Integer articleId, @RequestParam("memberPk") Integer memberPk,
			@RequestParam("content") String content, @RequestParam("replyId") Integer replyId, Model m) {

		Comment savedComment = new Comment();

		Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
		savedComment.setUpdateTime(updateTime);

		savedComment.setArticleId(articleId);
		savedComment.setMemberPk(memberPk);
		savedComment.setContent(content);
		savedComment.setName(mService.findByMemberPk(memberPk).getName());
		savedComment.setStatus("public");
		savedComment.setReplyId(replyId);

		return cService.save(savedComment, aService.findById(articleId));
	}

	@PostMapping("/getComment")
	@ResponseBody
	public List<Comment> getComment(@RequestParam("articleId") Integer articleId) {

		return cService.findByArticleId(articleId);

	}

	@PostMapping("/hideComment")
	@ResponseBody
	public void hideComment(@RequestParam("commentId") Integer commentId) {

		Comment comment = cService.findById(commentId);
		comment.setStatus("deleted");
		cService.updateById(comment);

	}

	// ----------------------------------------------------------------------------------------------------------------------------------------------
//	個人空間

	@RequestMapping("/users/toUserArticle")
	public String toUserArticle(@RequestParam("memberPk") Integer memberPk, Model m) {

		m.addAttribute("myArticle", aService.findByMemberPk(memberPk));

		return "forum/users/userArticle";
	}

	@RequestMapping("/users/toUserFavorite")
	public String toUserFavorite(@RequestParam("memberPk") Integer memberPk, Model m) {

		List<Article> favoriteArticles = new ArrayList<Article>();

		for (Status status : sService.findByMemberPk(memberPk)) {

			if (status.getFavorite() != 0) {
				favoriteArticles.add(aService.findById(status.getArticleId()));
			}
		}

		m.addAttribute("myFavorite", favoriteArticles);

		return "forum/users/userFavorite";
	}

	@RequestMapping("/users/toViewRecord")
	public String toViewRecord(@RequestParam("memberPk") Integer memberPk, Model m) {

		m.addAttribute("viewRecord", sService.findViewRecord(memberPk));

		return "forum/users/viewRecord";
	}

	@RequestMapping("/deleteViewRecord")
	@ResponseBody
	public void deleteViewRecord(@RequestParam("statusId") Integer statusId) {

		Status status = sService.findById(statusId);
		status.setUpdateTime(null);
		sService.update(status);

	}

	@PostMapping("/hideArticle")
	@ResponseBody
	public void hideArticle(@RequestParam("articleId") Integer articleId) {

		Article article = aService.findById(articleId);
		article.setStatus("deleted");
		aService.updateById(article);

	}

	@RequestMapping("/toUpdateArticle")
	public String updateArticle(@RequestParam("articleId") Integer articleId, Model m) {

		m.addAttribute("article", aService.findById(articleId));

		return "forum/users/updateArticle";
	}

	@RequestMapping("/getOldArticle")
	@ResponseBody
	public Article getOldArticle(@RequestParam("articleId") Integer articleId) {

		return aService.findById(articleId);
	}

	@RequestMapping("/updatePermissions")
	@ResponseBody
	public void updatePermissions(@RequestParam("articleId") Integer articleId, @RequestParam("status") String status) {

		Article article = aService.findById(articleId);
		article.setStatus(status);
		aService.updateById(article);

	}

	@RequestMapping("/updateArticleEvaluate")
	@ResponseBody
	public void updateArticleEvaluate(@RequestParam("articleId") Integer articleId,
			@RequestParam("thumbUp") Integer thumbUp, @RequestParam("unlike") Integer unlike) {

		Article article = aService.findById(articleId);
		article.setThumbUp(thumbUp);
		article.setUnlike(unlike);
		aService.updateById(article);

	}

	@RequestMapping("/updateViews")
	@ResponseBody
	public void updateViews(@RequestParam("articleId") Integer articleId) {

		Article article = aService.findById(articleId);
		article.setViews(article.getViews() + 1);
		aService.updateById(article);

	}

	// ----------------------------------------------------------------------------------------------------------------------------------------------
//	狀態

	@PostMapping("/checkStatus")
	@ResponseBody
	public Status checkStatus(@RequestParam("articleId") Integer articleId,
			@RequestParam("memberPk") @Nullable Integer memberPk) {

		if (memberPk != null) {

			if (sService.findByArticleIdAndMemberPk(articleId, memberPk) == null) {

				Article article = aService.findById(articleId);

				List<Status> userStatus = new ArrayList<Status>();

				Status savedStatus = new Status();

				savedStatus.setArticleId(articleId);
				savedStatus.setMemberPk(memberPk);
				savedStatus.setReported(0);
				savedStatus.setThumbUp(0);
				savedStatus.setUnlike(0);
				savedStatus.setFavorite(0);

				Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
				savedStatus.setUpdateTime(updateTime);

				savedStatus.setArticle(article);

				userStatus.add(savedStatus);
				article.setUserStatus(userStatus);

				return sService.save(savedStatus);

			} else {

				Status updateStatus = sService.findByArticleIdAndMemberPk(articleId, memberPk);
				updateStatus.setUpdateTime(new java.sql.Timestamp(System.currentTimeMillis()));

				return sService.update(updateStatus);

			}

		} else {

			return null;

		}
	}

	@PostMapping("/updateStatus")
	@ResponseBody
	public Status updateStatus(@RequestParam("articleId") Integer articleId, @RequestParam("memberPk") Integer memberPk,
			@RequestParam("thumbUp") @Nullable Integer thumbUp, @RequestParam("unlike") @Nullable Integer unlike,
			@RequestParam("favorite") @Nullable Integer favorite, @RequestParam("reported") @Nullable Integer reported,
			@RequestParam("reportedReason") @Nullable String reportedReason) {

		Status status = sService.findByArticleIdAndMemberPk(articleId, memberPk);

		if (favorite != null) {

			status.setFavorite(favorite);

		} else if (reported != null) {

			status.setReported(reported);
			status.setReportedReason(reportedReason);

		} else {

			status.setThumbUp(thumbUp);
			status.setUnlike(unlike);

		}

		return sService.update(status);
	}

//	----------------------------------------------------------------------------------------------------------------------------------------------
//	圖片

	@RequestMapping("/getMemberImage")
	public void getMemberImage(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("memberPk") Integer memberPk, Model m) throws IOException, SQLException {

		OutputStream os = null;
		InputStream is = null;
		Blob blob = null;

		Member member = mService.findByMemberPk(memberPk);
		blob = member.getMemberImage();

		if (member.getMemberImage() != null) {
			is = blob.getBinaryStream();

		} else {

			is = this.getClass().getResourceAsStream("/static/images/forum/default.png");

		}

		os = response.getOutputStream();

		int length = 0;
		byte[] bytes = new byte[8192];

		while ((length = is.read(bytes)) != -1) {

			os.write(bytes, 0, length);

		}

		if (is != null)
			is.close();

		if (os != null)
			os.close();

	}

	@GetMapping("/getArticleCover")
	@ResponseBody
	public void getArticleCover(HttpServletResponse response, @RequestParam("articleId") Integer articleId)
			throws IOException, SQLException {

		InputStream is = null;

		if (aService.findById(articleId).getCover() != null) {
			Blob blob = null;
			blob = new SerialBlob(aService.findById(articleId).getCover());
			is = blob.getBinaryStream();

		} else {

			is = this.getClass().getResourceAsStream("/static/images/forum/logo.png");

		}

		OutputStream os = response.getOutputStream();

		int length = 0;
		byte[] bytes = new byte[8192];

		while ((length = is.read(bytes)) != -1) {

			os.write(bytes, 0, length);
			os.flush();
		}

	}

	@RequestMapping("/toUserRecord")
	public String toUserMyRecord() {
		return "/forum/users/userRecord";
	}

//	----------------------------------------------------------------------------------------------------------------------------------------------
//	個人頁面
	@RequestMapping("/users/getMemberArticleInfo")
	@ResponseBody
	public Integer[] getMemberArticleInfo(@RequestParam("memberPk") Integer memberPk) {

		Integer myArticle = aService.findByMemberPk(memberPk).size();

		Integer myFavorite = 0;
		for (Status status : sService.findByMemberPk(memberPk)) {

			if (status.getFavorite() != 0) {
				myFavorite += 1;
			}
		}

		Integer[] result = { myArticle, myFavorite };

		return result;
	}

//	----------------------------------------------------------------------------------------------------------------------------------------------
//	測試

	@GetMapping("toTEST/{pageNo}")
	public String toTEST(@PathVariable("pageNo") int pageNo, Model model) {

		int pageSize = 10;
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
		Page<Article> page = aService.findByPublic(pageable);

		model.addAttribute("nowPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("articles", page.getContent());

		return "/forum/TEST";
	}

}
