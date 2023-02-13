package tw.forum.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends JpaRepository<Comment, Integer> {

	@Query(value = "FROM Comment WHERE articleId = ?1 AND status = ?2 AND replyId = ?3")
	public List<Comment> findByArticleIdAndStatusAndReplyId(Integer articleId, String status, Integer replyId);

	public List<Comment> findByArticleId(Integer articleId);

	public List<Comment> findByReplyId(Integer replyId);

}
