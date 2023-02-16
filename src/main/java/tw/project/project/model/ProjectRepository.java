package tw.project.project.model;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import tw.member.model.Member;

public interface ProjectRepository extends JpaRepository<Project, Integer> {

	public Project findBypjID(Integer pjID);
	
	//後台
	public Page<Project> findByPjClass(String pjClass,Pageable pageable);

	public Page<Project> findByPjClassAndPjNameLike(String pjClass, String pjName, Pageable pageable);

	public Page<Project> findByPjClassAndPjStatus(String pjClass, String pjStatus, Pageable pageable);
	
	public Page<Project> findByPjClassAndMember(String pjClass, Member member, Pageable pageable);

	public Page<Project> findByPjClassAndMemberAndPjNameLike(String pjClass, Member member, String string, Pageable pageable);

	public Page<Project> findByPjClassAndFieldNameLike(String string, String field, Pageable pageable);

	public Page<Project> findByPjClassAndFieldName(String string, String field, Pageable pageable);
}
