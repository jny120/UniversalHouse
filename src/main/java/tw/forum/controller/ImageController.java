package tw.forum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.forum.model.ArticleService;
import tw.forum.model.Image;
import tw.forum.model.ImageService;

@Controller
public class ImageController {

	@Autowired
	private ArticleService aService;

	@Autowired
	private ImageService iService;

	@PostMapping("/admin/toImageDB_backstage")
	public String imageDB_backstage(@RequestParam("articleId") Integer articleId, Model m) {

		m.addAttribute("article", aService.findById(articleId));

		List<Image> images = iService.findByArticleId(articleId);
		m.addAttribute("images", images);

		return "forum/backstage/imageDB";

	}

	@PostMapping("/admin/deleteImage_backstage")
	@ResponseBody
	public void deleteImage_backstage(@RequestParam("articleId") Integer articleId, @RequestParam("imageId") Integer imageId) {

		iService.deleteById(imageId);

	}
}
