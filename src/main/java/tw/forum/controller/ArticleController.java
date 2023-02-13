package tw.forum.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

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
import tw.forum.model.Image;
import tw.forum.model.ImageService;
import tw.member.model.Member;
import tw.member.model.MemberService;

@Controller
public class ArticleController {

	@Autowired
	private ArticleService aService;

	@Autowired
	private ImageService iService;

	@Autowired
	private MemberService mService;

	@PostMapping("/newArticle")
	@ResponseBody
	public Article newArticle(@RequestParam("images") @Nullable List<MultipartFile> images,
			@RequestParam("memberPk") Integer memberPk, @RequestParam("topicName") String topicName,
			@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("status") String status, Model m) throws SQLException, IOException {

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

		Article savedArticle = aService.save(article, mService.findByMemberPk(memberPk));

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
		
		return savedArticle;

	}

	@PostMapping("/updateArticle")
	public String updateArticle(
			@RequestParam("images") @Nullable MultipartFile image,
			@RequestParam("articleId") Integer articleId, 
			@RequestParam("topicName") String topicName,
			@RequestParam("title") String title, 
			@RequestParam("content") String content,
			@RequestParam("status") String status, 
			@RequestParam("views") Integer views,
			Model m) throws SQLException {

		try {

			Article article = new Article();

			Timestamp updateTime = new java.sql.Timestamp(System.currentTimeMillis());
			article.setUpdateTime(updateTime);

			article.setArticleId(articleId);
			article.setTopicName(topicName);
			article.setTitle(title);
			article.setContent(content);
			article.setStatus(status);
			article.setViews(views);
			aService.updateById(article);

			m.addAttribute("articleId", article.getArticleId());

			List<Article> articles = aService.findAll();
			m.addAttribute("articles", articles);

			return "forum/article/frontPage";

		} catch (Exception e) {

			return "forum/article/newArticle";

		}

	}

	@RequestMapping("/updateViews")
	@ResponseBody
	public void updateViews(@RequestParam("articleId") Integer articleId) {
		Article article = aService.findById(articleId);
		article.setViews(article.getViews() + 1);
		aService.updateById(article);
	}

	@RequestMapping("/updateArticleEvaluate")
	@ResponseBody
	public void updateArticleEvaluate(
			@RequestParam("articleId") Integer articleId,
			@RequestParam("thumbUp") Integer thumbUp, 
			@RequestParam("unlike") Integer unlike) {

		Article article = aService.findById(articleId);
		article.setThumbUp(thumbUp);
		article.setUnlike(unlike);
		aService.updateById(article);

	}

	@PostMapping("/deleteArticle")
	public String deleteArticle(@RequestParam("articleId") Integer articleId, Model m) {

		Article article = aService.findById(articleId);
		aService.deleteById(article);

		return "forum/article/deleteSuccessfully";
	}

	@GetMapping("/frontPage")
	public String frontPage(Model m) {

		List<Article> articles = aService.findByStatus();
		m.addAttribute("articles", articles);
		
		List<Article> topViewArticle = aService.findByViews();
		m.addAttribute("topViewArticle", topViewArticle);

		return "forum/article/frontPage";
	}

	@RequestMapping("/showArticle")
	public String showArticle(@RequestParam("articleId") Integer articleId, Model m) {

		List<Image> images = iService.findByArticleId(articleId);

		Article article = aService.findById(articleId);
		m.addAttribute("article", article);

		Member member = article.getMember();
		m.addAttribute("member", member);

		if (images != null) {

			m.addAttribute("images", images);

		}

		return "forum/article/show";
	}

	@PostMapping("/hideArticle")
	public String hideArticle(@RequestParam("articleId") Integer articleId, Model m) {

		Article article = aService.findById(articleId);
		article.setStatus("deleted");
		aService.updateById(article);

		return "forum/article/deleteSuccessfully";
	}

	@PostMapping("/searchRecord")
	public String searchRecord(@RequestParam("memberPk") Integer memberPk, Model m) {

		List<Article> articles = aService.findByMemberPk(memberPk);

		m.addAttribute("articles", articles);

		return "forum/article/record";
	}

	@PostMapping("/getOldArticle")
	public String getOldArticle(@RequestParam("articleId") Integer articleId, Model m) {

		Article article = aService.findById(articleId);
		m.addAttribute("article", article);

		List<Image> images = iService.findByArticleId(articleId);
		m.addAttribute("images", images);

		return "forum/article/updateArticle";
	}

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

	@RequestMapping("/getArticleImage")
	public void getArticleImage(HttpServletResponse response, @RequestParam("imageId") Integer imageId, Model m)
			throws IOException, SQLException {

		OutputStream os = null;
		InputStream is = null;
		Blob blob = null;

		if (iService.findById(imageId) != null) {

			Image image = iService.findById(imageId);

			blob = image.getImage();
			is = blob.getBinaryStream();
			os = response.getOutputStream();

			int length = 0;
			byte[] bytes = new byte[8192];

			while ((length = is.read(bytes)) != -1) {

				os.write(bytes, 0, length);
				os.flush();
			}

		}
	}

	@RequestMapping("/getArticleCover")
	public void getArticleCover(HttpServletResponse response, @RequestParam("articleId") Integer articleId, Model m)
			throws IOException, SQLException {

		OutputStream os = null;
		InputStream is = null;
		Blob blob = null;

		if (iService.findByArticleId(articleId) != null) {

			List<Image> images = iService.findByArticleId(articleId);
			Image image = images.get(0);

			if (image.getImage() == null) {
				is = image.getImage().getBinaryStream();

			} else {

				is = this.getClass().getResourceAsStream("/static/images/forum/default.jpg");

			}

			blob = image.getImage();
			is = blob.getBinaryStream();
			os = response.getOutputStream();

			int length = 0;
			byte[] bytes = new byte[8192];

			while ((length = is.read(bytes)) != -1) {

				os.write(bytes, 0, length);
				os.flush();
			}

		}
	}

	@RequestMapping("/createArticle")
	public String createArticle() {
		return "/forum/article/newArticle";
	}

	@RequestMapping("/getTopView")
	@ResponseBody
	public List<Article> getTopView() {
		return aService.findByViews();
	}
	
}
