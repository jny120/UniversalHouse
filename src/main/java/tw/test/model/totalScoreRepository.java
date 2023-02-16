package tw.test.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface totalScoreRepository extends JpaRepository<totalScore, Integer> {
    // public List<totalScore> findByMemberId(String memberId);
    @Query(value = "SELECT * FROM TOTALSCORE WHERE MEMBERID = :MEMBERID", nativeQuery = true)
    public List<totalScore> checkmemberTest(@Param("MEMBERID") String memberid);

    // public List<totalScore> findByMemberid(String memberid);
}
