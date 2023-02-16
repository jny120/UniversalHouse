package tw.forum.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.forum.model.Article;
import tw.forum.model.ArticleService;
import tw.forum.model.Comment;
import tw.forum.model.CommentService;
import tw.forum.model.StatusService;
import tw.member.model.Member;
import tw.member.model.MemberService;

@RequestMapping("/admin")
@Controller
public class BackstageController {

	@Autowired
	private ArticleService aService;

	@Autowired
	private CommentService cService;

	@Autowired
	private MemberService mService;

	@Autowired
	private StatusService sService;

	@RequestMapping("/forumBackstage")
	public String forumBackstage(Model m) {

		m.addAttribute("articles", aService.findAll());

		return "forum/backstage/backstage";
	}

	@RequestMapping("/toNewArticle")
	public String createArticle() {

		return "forum/backstage/newArticle";
	}

	@PostMapping("/newArticle")
	public String newArticle(@RequestParam("cover") @Nullable MultipartFile cover,
			@RequestParam("memberPk") Integer memberPk, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("status") String status, @RequestParam("thumbUp") Integer thumbUp,
			@RequestParam("unlike") Integer unlike, @RequestParam("quickInsert") String quickInsert, Model m)
			throws IOException, ServletException, SQLException {

		Map<String, String> requestErrorMsg = new HashMap<String, String>();
		Map<String, String> sessionMessageOK = new HashMap<String, String>();
		m.addAttribute("MsgMap", requestErrorMsg);
		m.addAttribute("MsgOK", sessionMessageOK);

		Article article = new Article();

		Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
		article.setUpdateTime(updateTime);
		article.setMemberPk(memberPk);
		article.setTopicName(topicName);
		article.setTitle(title);
		article.setContent(content);
		article.setThumbUp(thumbUp);
		article.setUnlike(unlike);
		article.setStatus(status);
		article.setViews(0);

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

			ByteArrayOutputStream os = new ByteArrayOutputStream();
			InputStream is = this.getClass().getResourceAsStream("/static/images/forum/logo.png");

			byte[] buffer = new byte[1024];
			int length;
			while ((length = is.read(buffer)) != -1) {
				os.write(buffer, 0, length);
			}

			byte[] result = os.toByteArray();

			article.setCover(result);

		}

		aService.save(article, mService.findByMemberPk(memberPk));

		return "forum/backstage/backstage";

	}

	@RequestMapping("/updateArticle")
	public String updateArticle(@RequestParam("cover") @Nullable MultipartFile cover,
			@RequestParam("articleId") Integer articleId, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("thumbUp") Integer thumbUp, @RequestParam("unlike") Integer unlike,
			@RequestParam("views") Integer views, Model m) throws IOException, ServletException, SQLException {

		Article article = aService.findById(articleId);

		article.setArticleId(articleId);
//		article.setUpdateTime(new java.sql.Timestamp(System.currentTimeMillis()));
		article.setTopicName(topicName);
		article.setTitle(title);
		article.setContent(content);
		article.setThumbUp(thumbUp);
		article.setUnlike(unlike);
		article.setViews(views);

		if (!cover.isEmpty()) {

			byte[] b = cover.getBytes();
			article.setCover(b);

		} else {
			article.setCover(article.getCover());

		}

		aService.updateById(article);

		return "forum/backstage/backstage";

	}

	@PostMapping("/deleteArticle")
	@ResponseBody
	public List<Article> deleteArticle(@RequestParam("articleId") Integer articleId, Model m) {

		Article article = aService.findById(articleId);
		aService.deleteById(article);

		return aService.findAll();
	}

	@GetMapping("/findAll")
	@ResponseBody
	public List<Article> findAll() {

		return aService.findAll();
	}

	@PostMapping("/toUpdateArticle")
	public String updateArticle(@RequestParam("articleId") Integer articleId, Model m) {

		m.addAttribute("article", aService.findById(articleId));

		return "forum/backstage/updateArticle";
	}

	@PostMapping("/getOldArticle")
	@ResponseBody
	public Article getOldArticle(@RequestParam("articleId") Integer articleId) {

		return aService.findById(articleId);
	}

//	-------------------------------------------------

	@PostMapping("/updateComment")
	@ResponseBody
	public void updateComment(@RequestParam("commentId") Integer commentId, @RequestParam("status") String status) {

		Comment comment = cService.findById(commentId);
		comment.setStatus(status);
		cService.updateById(comment);

	}

//	-------------------------------------------------

	@RequestMapping("/toCommentDB")
	public String toCommentDB(@RequestParam("articleId") Integer articleId, Model m) {

		List<Comment> comments = cService.findByArticleId(articleId);
		m.addAttribute("articleId", articleId);
		m.addAttribute("comments", comments);

		return "forum/backstage/commentDB";

	}

	@RequestMapping("/toContent")
	public String toContent(@RequestParam("articleId") Integer articleId, Model m) {

		m.addAttribute("article", aService.findById(articleId));

		return "forum/backstage/showContent";

	}

	@RequestMapping("/toStatusDB")
	public String toStatusDB(@RequestParam("articleId") Integer articleId, Model m) {

		m.addAttribute("status", sService.findByArticleIdAndReported(articleId,1));

		return "forum/backstage/statusDB";
	}

	@PostMapping("/deleteComment")
	@ResponseBody
	public void deleteComment(@RequestParam("commentId") Integer commentId) {

		cService.deleteById(cService.findById(commentId));

	}

//	-------------------------------------------------

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

}
