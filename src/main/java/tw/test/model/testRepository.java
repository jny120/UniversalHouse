package tw.test.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface testRepository extends JpaRepository<testCenterBean, Integer> {
	@Query(value = "SELECT * FROM TESTCENTER WHERE FIELD = :FIELD", nativeQuery = true)
	public List<testCenterBean> checkFieldTest(@Param("FIELD") String field);

	public void save(String testId);
}
