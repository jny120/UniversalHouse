package tw.project.project.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.member.model.Member;

@Service
@Transactional
public class ProjectService {

	@Autowired
	private ProjectRepository projectRepository;

	//新增，沒ID時新增
	public void saveProject(Project project) {
		projectRepository.save(project);
	}
	
	//更改，有ID時更改
	public void updateProject(Project project) {
		projectRepository.save(project);
	}
	
	//查詢
	public Project findBypjID(Integer pjID) {
		return projectRepository.findBypjID(pjID);
	};
	
	public Page<Project> findByPjClass(String pjClass,Pageable pageable){
		return projectRepository.findByPjClass(pjClass,pageable);
	};
	
	public Page<Project> findByPjClassAndPjStatus(String pjClass, String pjStatus, Pageable pageable){
		return projectRepository.findByPjClassAndPjStatus(pjClass, pjStatus,pageable);
	};
	
	public Page<Project> findByPjClassAndPjNameLike(String pjClass, String pjName, Pageable pageable){
		return projectRepository.findByPjClassAndPjNameLike(pjClass, "%"+pjName+"%", pageable);
	};
	
	public Page<Project> findByPjClassAndMemberAndPjNameLike(String pjClass, Member member, String pjName, Pageable pageable){
		return projectRepository.findByPjClassAndMemberAndPjNameLike(pjClass, member , "%"+pjName+"%", pageable);
	};
	
	public Page<Project> findByPjClassAndMember(String pjClass, Member member, Pageable pageable) {
		return projectRepository.findByPjClassAndMember(pjClass, member, pageable);
	};
	
	//刪除
	public void daleteProject(Project project) {
		projectRepository.delete(project);
	}
	
	public Page<Project> findAllByPage(Pageable pageable){
		return projectRepository.findAll(pageable);
	}

	public Page<Project> findByPjClassAndFieldNameLike(String string, String field, Pageable pageable) {
		return projectRepository.findByPjClassAndFieldNameLike(string, field, pageable);
	}

	public Page<Project> findByPjClassAndFieldName(String string, String field, Pageable pageable) {
		return projectRepository.findByPjClassAndFieldName(string, field, pageable);
	}
}
