package tw.project.evaluation.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import tw.member.model.Member;
import tw.project.project.model.Project;

@Entity
@Table(name = "evaluation")
@Component
public class Evaluation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "EVID")
	private int evID;
	
//	@Column(name = "pj_ID")
//	private Integer pjID;

	@ManyToOne
	@JoinColumn(name = "PJID")
	private Project project;
	
	@ManyToOne
	@JoinColumn(name = "MEMBERPK")
	private Member member;
	
	@ManyToOne
	@JoinColumn(name = "SERVICEPK")
	private Member servicer;
	
	@Column(name = "EVDEALPRICE")
	private int evDealPrice;
	
	@Column(name = "EVCOMPLETIONDATE")
	private Date evCompletionDate;
	
	@Column(name = "EVCLIENTEV")
	private int evClientEV;
	
	@Column(name = "EVCLIENTCOMMENT")
	private String evClientComment;
	
	public Evaluation() {
	}

	public Integer getEvID() {
		return evID;
	}

	public void setEvID(int evID) {
		this.evID = evID;
	}

//	public Integer getPjID() {
//		return pjID;
//	}
//
//	public void setPjID(Integer pjID) {
//		this.pjID = pjID;
//	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Member getServicer() {
		return servicer;
	}

	public void setServicer(Member servicer) {
		this.servicer = servicer;
	}

	public void setEvClientEV(int evClientEV) {
		this.evClientEV = evClientEV;
	}

	public Integer getEvDealPrice() {
		return evDealPrice;
	}

	public void setEvDealPrice(int evDealPrice) {
		this.evDealPrice = evDealPrice;
	}

	public Date getEvCompletionDate() {
		return evCompletionDate;
	}

	public void setEvCompletionDate(Date evCompletionDate) {
		this.evCompletionDate = evCompletionDate;
	}

	public Integer getEvClientEV() {
		return evClientEV;
	}

	public void setEvClientEV(Integer evClientEV) {
		this.evClientEV = evClientEV;
	}

	
//
//	@Override
//	public String toString() {
//		return "Evaluation [evID=" + evID + ", pjID=" + pjID + ", MemberID=" + memberID + ", ServiceID=" + serviceID
//				+ ", evDealPrice=" + evDealPrice + ", evCompletionDate=" + evCompletionDate + ", evClientEV="
//				+ evClientEV + ", evCLientComment=" + evCLientComment + "]";
//	}

	public String getEvClientComment() {
		return evClientComment;
	}

	public void setEvClientComment(String evClientComment) {
		this.evClientComment = evClientComment;
	}

	@Override
	public String toString() {
		return "Evaluation [evID=" + evID + ", project=" + project + ", member=" + member + ", servicer=" + servicer
				+ ", evDealPrice=" + evDealPrice + ", evCompletionDate=" + evCompletionDate + ", evClientEV="
				+ evClientEV + ", evClientComment=" + evClientComment + "]";
	}

}
