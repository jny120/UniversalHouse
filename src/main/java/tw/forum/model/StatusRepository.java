package tw.forum.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StatusRepository extends JpaRepository<Status, Integer> {
	
	@Query(value = "FROM Status WHERE articleId = ?1 AND memberPk = ?2 ")
	public Status findByArticleIdAndMemberPk(Integer articleId, Integer memberPk);
	
}
