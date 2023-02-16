package tw.test.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface surveyRepository extends JpaRepository<survey, Integer> {
    @Query(value = "SELECT * FROM SURVEY WHERE SURVEY = :SURVEY", nativeQuery = true)
    public List<survey> checksurveyTest(@Param("SURVEY") String survey);

    @Query(value = "SELECT * FROM SURVEY WHERE SURVEY = :SURVEY", nativeQuery = true)
    public survey checksurveyTestimg(@Param("SURVEY") String survey);

    @Query(value = "SELECT * FROM SURVEY WHERE SURVEY = :SURVEY", nativeQuery = true)
    public Optional<survey> checksurveyTestfield(@Param("SURVEY") String survey);
}