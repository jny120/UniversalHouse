package tw.forum.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StatusRepository extends JpaRepository<Status, Integer> {

	@Query(value = "FROM Status WHERE articleId = ?1 AND memberPk = ?2 ")
	public Status findByArticleIdAndMemberPk(Integer articleId, Integer memberPk);

	public List<Status> findByMemberPk(Integer memberPk);

	public List<Status> findByArticleId(Integer aricleId);

	public List<Status> findByArticleIdAndReported(Integer aricleId,Integer reported);

	@Query(value = "FROM Status WHERE memberPk = ?1 AND updateTime IS NOT NULL ORDER BY updateTime DESC")
	public List<Status> findViewRecord(Integer memberPk);

	@Query(value = "FROM Status WHERE memberPk = ?1 ORDER BY updateTime DESC")
	public List<Status> findByMemberPkAndUpdateTime(Integer memberPk);

}
