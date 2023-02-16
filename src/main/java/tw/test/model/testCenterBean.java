package tw.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "testcenter")
@Component
public class testCenterBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "testpk")
	private Integer testpk;

	@Column(name = "testid")
	private String testid;

	@Column(name = "examinationquestion")
	private String examinationquestion;

	@Column(name = "field")
	private String field;

	@Column(name = "options")
	private String options;

	@Column(name = "options2")
	private String options2;

	@Column(name = "options3")
	private String options3;

	@Column(name = "options4")
	private String options4;

	@Column(name = "answer")
	private String answer;

	@Column(name = "answer2")
	private String answer2;

	@Column(name = "answer3")
	private String answer3;

	@Column(name = "answer4")
	private String answer4;

	public testCenterBean() {

	}

	public testCenterBean(String examinationquestion, String field, String options2, String options3, String options4,
			String options) {
		this.examinationquestion = examinationquestion;
		this.field = field;
		this.options = options;
		this.options2 = options2;
		this.options3 = options3;
		this.options4 = options4;
	}

	public testCenterBean(Integer testPk, String examinationquestion, String field, String options2, String options3,
			String options4, String options) {
		this.testpk = testPk;
		this.examinationquestion = examinationquestion;
		this.field = field;
		this.options = options;
		this.options2 = options2;
		this.options3 = options3;
		this.options4 = options4;
	}

	public testCenterBean(Integer testPk, String testId, String examinationquestion, String field, String options,
			String options2, String options3, String options4) {
		this.testpk = testPk;
		this.testid = testId;
		this.examinationquestion = examinationquestion;
		this.field = field;
		this.options = options;
		this.options2 = options2;
		this.options3 = options3;
		this.options4 = options4;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("testCenterBean [testpk=");
		builder.append(testpk);
		builder.append(", testid=");
		builder.append(testid);
		builder.append(", examinationquestion=");
		builder.append(examinationquestion);
		builder.append(", field=");
		builder.append(field);
		builder.append(", options=");
		builder.append(options);
		builder.append(", options2=");
		builder.append(options2);
		builder.append(", options3=");
		builder.append(options3);
		builder.append(", options4=");
		builder.append(options4);
		builder.append(", answer=");
		builder.append(answer);
		builder.append(", answer2=");
		builder.append(answer2);
		builder.append(", answer3=");
		builder.append(answer3);
		builder.append(", answer4=");
		builder.append(answer4);
		builder.append("]");
		return builder.toString();
	}

	public Integer getTestpk() {
		return testpk;
	}

	public void setTestpk(Integer testpk) {
		this.testpk = testpk;
	}

	public String getTestId() {
		return testid;
	}

	public void setTestId(String testId) {
		this.testid = testId;
	}

	public String getExaminationquestion() {
		return examinationquestion;
	}

	public void setExaminationquestion(String examinationquestion) {
		this.examinationquestion = examinationquestion;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public String getOptions2() {
		return options2;
	}

	public void setOptions2(String options2) {
		this.options2 = options2;
	}

	public String getOptions3() {
		return options3;
	}

	public void setOptions3(String options3) {
		this.options3 = options3;
	}

	public String getOptions4() {
		return options4;
	}

	public void setOptions4(String options4) {
		this.options4 = options4;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswer2() {
		return answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public String getAnswer3() {
		return answer3;
	}

	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	public String getAnswer4() {
		return answer4;
	}

	public void setAnswer4(String answer4) {
		this.answer4 = answer4;
	}

}