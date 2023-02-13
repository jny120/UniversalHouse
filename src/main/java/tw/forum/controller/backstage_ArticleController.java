package tw.forum.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
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
import tw.forum.model.Image;
import tw.forum.model.ImageService;
import tw.member.model.Member;
import tw.member.model.MemberService;

@Controller
public class backstage_ArticleController {

	@Autowired
	private ArticleService aService;

	@Autowired
	private ImageService iService;

	@Autowired
	private MemberService mService;

	
	@RequestMapping("/admin/forumBackstage")
	public String tobackstage() {

		return "forum/backstage/backstage";
	}
	
//	-------------------------------------------------
	
	@RequestMapping("/admin/toNewArticle_backstage")
	public String createArticle_backstage() {

		return "forum/backstage/newArticle";
	}
	
	@PostMapping("/admin/newArticle_backstage")
	public String newArticle_backstage(@RequestParam("images") @Nullable List<MultipartFile> images,
			@RequestParam("memberPk") Integer memberPk, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("status") String status, @RequestParam("thumbUp") Integer thumbUp,
			@RequestParam("unlike") Integer unlike, Model m) throws IOException, ServletException, SQLException {

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

		Member member = mService.findByMemberPk(memberPk);

		Article savedArticle = aService.save(article, member);

		if (images != null) {

			for (MultipartFile mf : images) {

				String fileName = mf.getOriginalFilename();
				byte[] b = mf.getBytes();

//				String saveFileDir = "";
//				File saveFilePath = new File(saveFileDir, fileName);
//				image.transferTo(saveFilePath);

				Blob blob = null;
				blob = new SerialBlob(b);

				Image savedImage = new Image();
				savedImage.setArticleId(article.getArticleId());
				savedImage.setImageName(fileName);
				savedImage.setImage(blob);

				if (savedArticle.getArticleId() != null) {

					iService.save(savedArticle, savedImage);
				}

			}

		}

		return "forum/backstage/backstage";

	}

//	-------------------------------------------------
	
	@RequestMapping("/admin/updateArticle_backstage")
	public String updateArticle_backstage(@RequestParam("images") @Nullable List<MultipartFile> images,
			@RequestParam("articleId") Integer articleId, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("status") String status, @RequestParam("thumbUp") Integer thumbUp,
			@RequestParam("unlike") Integer unlike,@RequestParam("views") Integer views, Model m) throws IOException, ServletException, SQLException {

		Article article = new Article();

		article.setArticleId(articleId);
		article.setUpdateTime(new java.sql.Timestamp(System.currentTimeMillis()));
		article.setTopicName(topicName);
		article.setTitle(title);
		article.setContent(content);
		article.setStatus(status);
		article.setThumbUp(thumbUp);
		article.setUnlike(unlike);
		article.setViews(views);

		Article article2 = aService.updateById(article);
		
		if (images.size() != 0) {

			iService.deleteByArticleId(articleId);

			for (MultipartFile mf : images) {

				String fileName = mf.getOriginalFilename();
				byte[] imageByte = mf.getBytes();

//					String saveFileDir = "";
//					File saveFilePath = new File(saveFileDir, fileName);
//					image.transferTo(saveFilePath);

				Blob imageBlob = null;
				imageBlob = new SerialBlob(imageByte);

				Image savedImage = new Image();
				savedImage.setArticleId(article.getArticleId());
				savedImage.setImageName(fileName);
				savedImage.setImage(imageBlob);

				if (article2.getArticleId() != null) {

					iService.save(article2, savedImage);
				}
			}
		}

		return "forum/backstage/backstage";

	}

	@PostMapping("/admin/deleteArticle_backstage")
	@ResponseBody
	public List<Article> deleteArticle_backstage(@RequestParam("articleId") Integer articleId, Model m) {

		Article article = aService.findById(articleId);
		aService.deleteById(article);

		return aService.findAll();
	}

	@RequestMapping("/admin/findAll_backstage")
	@ResponseBody
	public List<Article> findAll_backstage() {

		return aService.findAll();
	}

//	@PostMapping("/findByNameFQ_backstage")
//	public String findByNameFQ_backstage(@RequestParam("name") String name, Model m) {
//
//		List<Article> articles = aService.findByName(name);
//
//		if (articles == null) {
//
//			return "forum/backstage/null";
//		}
//
//		m.addAttribute("articles", articles);
//
//	return "forum/backstage/backstage";
//
//	}

//	-------------------------------------------------
	
	@PostMapping("/admin/toUpdateArticle_backstage")
	public String updateArticle_backstage(@RequestParam("articleId") Integer articleId, Model m) {
		
		m.addAttribute("articleId", articleId);
		m.addAttribute("images",iService.findByArticleId(articleId));

		return "forum/backstage/updateArticle";
	}
	
	@PostMapping("/admin/getOldArticle_backstage")
	@ResponseBody
	public Article getOldArticle_backstage(@RequestParam("articleId")  int articleId, Model m) {
		
		Article article = aService.findById(  articleId );
		
		return article;
	}

//	-------------------------------------------------
	
	
	@PostMapping("/admin/idSerach_backstage")
	public String idSerach_backstage(@RequestParam("articleId") String articleId, Model m) {

		for (int i = articleId.length() - 1; i >= 0; --i) {

			int chr = articleId.charAt(i);

			if (chr < 48 || chr > 57) {

				return "forum/backstage/null";

			}

		}

		Article article = aService.findById(Integer.parseInt(articleId));

		if (article == null) {
			return "/forum/backstage/null";
		}

		List<Article> articles = new ArrayList<Article>();
		articles.add(article);

		m.addAttribute("articles", articles);

		return "forum/backstage/backstage";
	}

}
