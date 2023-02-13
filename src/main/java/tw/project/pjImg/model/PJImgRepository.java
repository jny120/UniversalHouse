package tw.project.pjImg.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import tw.project.project.model.Project;

public interface PJImgRepository extends JpaRepository<PjImg, Integer> {

	public List<PjImg> findByProject(Project project);
}
