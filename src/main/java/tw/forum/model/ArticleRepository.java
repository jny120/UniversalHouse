package tw.forum.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

	List<Article> findByMemberPk(Integer memberPk);

	public List<Article> findByStatus(String status);

	public List<Article> findByTitle(String title);
	
	@Query(value = "FROM Article WHERE status = 'public' ORDER BY views DESC")
	public List<Article> findByViews();
	
}
