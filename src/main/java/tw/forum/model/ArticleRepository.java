package tw.forum.model;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

	@Query("SELECT a FROM Article a WHERE a.status = 'public' ORDER BY a.updateTime DESC")
	public Page<Article> findByPublicOrderByUpdateTimeDesc(Pageable pageable);

	@Query("SELECT a FROM Article a WHERE a.memberPk = :memberPk AND a.status='public' OR a.status='hidden' ORDER BY a.updateTime DESC")
	public List<Article> findByMemberPkOrderByUpdateTimeDesc(Integer memberPk);

	public Page<Article> findByStatus(String status, Pageable pageable);

	@Query("SELECT a FROM Article a WHERE a.status='public' AND a.title LIKE %:title% ")
	public Page<Article> findByTitle(@Param("title") String title, Pageable pageable);

	@Query("SELECT a FROM Article a WHERE a.status = :status AND topicName = :topicName ORDER BY a.updateTime DESC")
	public Page<Article> findByStatusAndTopicNameOrderByUpdateTimeDesc(String status, String topicName,
			Pageable pageable);

	@Query(value = "FROM Article WHERE status = 'public' ORDER BY views DESC")
	public List<Article> orderByViews();

	@Query(value = "FROM Article WHERE status = 'public' ORDER BY updateTime DESC")
	public List<Article> orderByUpdateTime();

	@Query(value = "FROM Article WHERE status = 'public' ORDER BY thumbUp DESC")
	public List<Article> orderLikeArticle();

	@Query(value = "FROM Article WHERE status = 'public' AND topicName=?1 ORDER BY views DESC")
	public List<Article> orderByViewsAndTopicName(String topicName);

	@Query(value = "FROM Article WHERE status = 'public' AND topicName=?1 ORDER BY thumbUp DESC")
	public List<Article> orderByLikeArticleAndTopicName(String topicName);

}
