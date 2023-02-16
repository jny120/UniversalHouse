package tw.project.evaluation.model;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.member.model.Member;
import tw.project.project.model.Project;

public interface EvaluationRepository extends JpaRepository<Evaluation, Integer>{

	public List<Evaluation> findByProject(Project project);
	
	public Evaluation findByEvID(Integer evID);

	public Page<Evaluation> findByServicer(Member Server, Pageable pageable);

	public Page<Evaluation> findByProjectAndServicer(Project project,Member member, Pageable pageable);

	public Page<Evaluation> findByMember(Member member, Pageable pageable);
	
	@Query(value = "select AVG(evClientEV) from Evaluation Where pjID =?1", nativeQuery = true)
	public Integer avgEV(int pjID);
	
	@Query(value = "SELECT COUNT(*) FROM EVALUATION WHERE EVCOMPLETIONDATE  IS NOT NULL AND SERVICEPK=?1", nativeQuery = true)
	public Integer countServicer(int memberPk);
	
	public Page<Evaluation> findByprojectAndEvClientEV(Project project,Integer ev, Pageable pageable);
}
