package tw.forum.controller;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.forum.model.Article;
import tw.forum.model.ArticleService;
import tw.forum.model.Comment;
import tw.forum.model.CommentService;

@Controller
public class CommentController {

	@Autowired
	private ArticleService aService;

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
		savedComment.setContent(content);
		savedComment.setStatus("public");
		savedComment.setThumbUp(0);
		savedComment.setUnlike(0);
		savedComment.setReplyId(0);

		Article article = aService.findById(articleId);

		Comment comment = cService.save(savedComment, article);

		return comment;
	}

	@RequestMapping("/admin/toCommentDB_backstage")
	public String commentDB_backstage(@RequestParam("articleId") Integer articleId, Model m) {

		List<Comment> comments = cService.findByArticleId(articleId);
		m.addAttribute("articleId", articleId);
		m.addAttribute("comments", comments);

		return "forum/backstage/commentDB";

	}

	@PostMapping("/getComment")
	@ResponseBody
	public List<Comment> getComment(@RequestParam("articleId") Integer articleId) {

		return cService.findByArticleId(articleId);

	}

	@PostMapping("/admin/deleteComment_backstage")
	@ResponseBody
	public void deleteComment_backstage(@RequestParam("commentId") Integer commentId) {

		cService.deleteById(cService.findById(commentId));

	}

}
