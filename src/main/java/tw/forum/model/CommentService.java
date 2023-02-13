package tw.forum.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CommentService {

	@Autowired
	private CommentRepository cRepo;

	public Comment save(Comment comment, Article article) {

		List<Comment> comments = new ArrayList<Comment>();

		comments.add(comment);
		article.setComments(comments);

		comment.setArticle(article);

		return cRepo.save(comment);
	}
	
	public Comment updateById(Comment comment) {
		return cRepo.save(comment);
	}

	public Comment findById(Integer commentId) {
		return cRepo.findById(commentId).get();
	}

	public List<Comment> findByArticleIdAndStatusAndReplyId(Integer articleId, String status, Integer replyId) {
		return cRepo.findByArticleIdAndStatusAndReplyId(articleId, status, replyId);
	}

	public void deleteById(Comment comment) {

		comment.getArticle().setComments(null);

		cRepo.deleteById(comment.getCommentId());
	}

	public List<Comment> findByArticleId(Integer articleId) {
		return cRepo.findByArticleId(articleId);
	}
	
	public List<Comment> findByReplyId(Integer replyId) {
		return cRepo.findByReplyId(replyId);
	}
}
