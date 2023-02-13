package tw.project.project.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import tw.project.evaluation.model.Evaluation;

@Component
public class ProjectAndEvaluation {
	
	@Autowired
	private Project project;
	
	@Autowired
	private Evaluation evaluation;

	public ProjectAndEvaluation() {
	}

	public ProjectAndEvaluation(Project project, Evaluation evaluation) {
		this.project = project;
		this.evaluation = evaluation;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Evaluation getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(Evaluation evaluation) {
		this.evaluation = evaluation;
	}

	@Override
	public String toString() {
		return "ProjectAndEvaluation [project=" + project + ", evaluation=" + evaluation + "]";
	}

}
