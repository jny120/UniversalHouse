package tw.project.evaluation.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.member.model.Member;
import tw.project.project.model.Project;

@Service
@Transactional
public class EvaluationService {

	@Autowired
	private EvaluationRepository evaluationRepository;

	//新增
	public void saveEvaluation(Evaluation evaluation) {
		evaluationRepository.save(evaluation);
	}
	
	//更改
	public void updateEvaluation(Evaluation evaluation) {
		evaluationRepository.save(evaluation);
	}
	
	//查詢
	public List<Evaluation> findByProject(Project project){
		return evaluationRepository.findByProject(project);
	};
	
	public Evaluation findByEvID(Integer evID) {
		return evaluationRepository.findByEvID(evID);
	};
	
	public Page<Evaluation> findByServicer(Member servicer, Pageable pageable){
		return evaluationRepository.findByServicer(servicer, pageable);
	}

	public Page<Evaluation> findByProjectAndServicer(Project project, Member member, Pageable pageable) {
		return evaluationRepository.findByProjectAndServicer(project, member, pageable);
	}

	public Page<Evaluation> findByMember(Member member, Pageable pageable) {
		return evaluationRepository.findByMember(member, pageable);
	}
	
	public Integer avgEV(int project) {
		return evaluationRepository.avgEV(project);
	}
	
	public Page<Evaluation> findByProjectAndEvClientEV(Project project,Integer ev, Pageable pageable){
		return evaluationRepository.findByprojectAndEvClientEV(project, ev, pageable);
	};
	
	public Integer countServicer(int memberPk) {
		return evaluationRepository.countServicer(memberPk);
	};
}
