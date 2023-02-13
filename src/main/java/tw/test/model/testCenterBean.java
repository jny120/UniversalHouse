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
	
	public testCenterBean() {
		
	}
	public testCenterBean( String examinationQuestion, String field, String options2, String options3, String options4, String options) {
		this.examinationquestion = examinationQuestion;
		this.field = field;
		this.options = options;
		this.options2 = options2;
		this.options3 = options3;
		this.options4 = options4;
	}
	public testCenterBean(Integer testPk, String examinationQuestion, String field, String options2, String options3, String options4, String options) {
		this.testpk = testPk;
		this.examinationquestion = examinationQuestion;
		this.field = field;
		this.options = options;
		this.options2 = options2;
		this.options3 = options3;
		this.options4 = options4;
	}

	public testCenterBean(Integer testPk, String testId, String examinationQuestion, String field, String options,
		String options2, String options3, String options4) {
	this.testpk = testPk;
	this.testid = testId;
	this.examinationquestion = examinationQuestion;
	this.field = field;
	this.options = options;
	this.options2 = options2;
	this.options3 = options3;
	this.options4 = options4;
}


	@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("testCenterBean [testPk=");
	builder.append(testpk);
	builder.append(", testId=");
	builder.append(testid);
	builder.append(", examinationQuestion=");
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
	builder.append("]");
	return builder.toString();
}

	public Integer getTestPk() {
		return testpk;
	}

	public void setTestPk(Integer testPk) {
		this.testpk = testPk;
	}

	public String getTestId() {
		return testid;
	}

	public void setTestId(String testId) {
		this.testid = testId;
	}

	public String getExaminationQuestion() {
		return examinationquestion;
	}

	public void setExaminationQuestion(String examinationQuestion) {
		this.examinationquestion = examinationQuestion;
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



}