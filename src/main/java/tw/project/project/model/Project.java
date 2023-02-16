package tw.project.project.model;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import tw.member.model.Member;
import tw.project.evaluation.model.Evaluation;
import tw.project.pjImg.model.PjImg;

@Entity
@Table(name = "project")
@Component
public class Project{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PJID")
	private int pjID;

	@Column(name = "PJCLASS")
	private String pjClass;

	@Column(name = "FIELDNAME")
	private String fieldName;

	@Column(name = "PJNAME")
	private String pjName;

	@ManyToOne
	@JoinColumn(name = "MEMBERPK")
	private Member member;
	
//	@Column(name = "MEMBERPK")
//	private int memberPK;

	@Column(name = "PJINSTRUCTION")
	private String pjInstruction;

	@Column(name = "PJSERVERLOCATION")
	private String pjServerLocation;

	@Column(name = "PJPRICE")
	private int pjPrice;

	@Column(name = "PJEXCOMPLETIONDATE")
	private Date pjExCompletionDate;

	@Column(name = "PJEXECUTIONTIME")
	private String pjExecutionTime;

	@Column(name = "PJUPLOADDATE")
	private Date pjUploadDate;

	@Column(name = "PJLASTUPDATE")
	private Date pjLastUpdate;

	@Column(name = "PJSTATUS")
	private String pjStatus;
	
	@JsonIgnore
	@JsonIgnoreProperties("project")
	@OneToMany(mappedBy = "project",cascade = CascadeType.ALL)
	private List<Evaluation> evaluations;
	
	@JsonIgnore
	@JsonIgnoreProperties("project")
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "project",cascade = CascadeType.ALL)
	private List<PjImg> pjImgs;

	public Project() {
	}

	public Integer getPjID() {
			return pjID;
	}

	public void setPjID(int pjID) {
		this.pjID = pjID;
	}

	public String getPjClass() {
		return pjClass;
	}

	public void setPjClass(String pjClass) {
		this.pjClass = pjClass;
	}

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public String getPjName() {
		return pjName;
	}

	public void setPjName(String pjName) {
		this.pjName = pjName;
	}

	public String getPjInstruction() {
		return pjInstruction;
	}

	public void setPjInstruction(String pjInstruction) {
		this.pjInstruction = pjInstruction;
	}

	public String getPjServerLocation() {
		return pjServerLocation;
	}

	public void setPjServerLocation(String pjServerLocation) {
		this.pjServerLocation = pjServerLocation;
	}

	public Integer getPjPrice() {
		return pjPrice;
	}

	public void setPjPrice(int pjPrice) {
		this.pjPrice = pjPrice;
	}

	public Date getPjExCompletionDate() {
		return pjExCompletionDate;
	}

	public void setPjExCompletionDate(String pjExCompletionDate) throws ParseException {
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(pjExCompletionDate);
		Timestamp ts = new Timestamp(date.getTime());
		this.pjExCompletionDate = ts;
	}

	public String getPjExecutionTime() {
		return pjExecutionTime;
	}

	public void setPjExecutionTime(String pjExecutionTime) {
		this.pjExecutionTime = pjExecutionTime;
	}

	public Date getPjUploadDate() {
		return pjUploadDate;
	}

	public void setPjUploadDate(Date pjUploadDate) {
		Timestamp ts = new Timestamp(pjUploadDate.getTime());
		this.pjUploadDate = ts;
	}

	public Date getPjLastUpdate() {
		return pjLastUpdate;
	}

	public void setPjLastUpdate(Date pjLastUpdate) {
		Timestamp ts = new Timestamp(pjLastUpdate.getTime());
		this.pjLastUpdate = ts;
	}

	public String getPjStatus() {
		return pjStatus;
	}

	public void setPjStatus(String pjStatus) {
		this.pjStatus = pjStatus;
	}

//	public Member getMember() {
//		return member;
//	}
//
//	public void setMember(Member member) {
//		this.member = member;
//	}
//
//	@Override
//	public String toString() {
//		return "Project [pjID=" + pjID + ", pjClass=" + pjClass + ", fieldName=" + fieldName + ", pjName=" + pjName
//				+ ", member=" + member + ", pjInstruction=" + pjInstruction + ", pjServerLocation=" + pjServerLocation
//				+ ", pjPrice=" + pjPrice + ", pjExCompletionDate=" + pjExCompletionDate + ", pjExecutionTime="
//				+ pjExecutionTime + ", pjUploadDate=" + pjUploadDate + ", pjLastUpdate=" + pjLastUpdate + ", pjStatus="
//				+ pjStatus + "]";
//	}

	
	public List<Evaluation> getEvaluations() {
		return evaluations;
	}

	public void setEvaluations(List<Evaluation> evaluations) {
		this.evaluations = evaluations;
	}

	public List<PjImg> getPjImgs() {
		return pjImgs;
	}

	public void setPjImgs(List<PjImg> pjImgs) {
		this.pjImgs = pjImgs;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

}
