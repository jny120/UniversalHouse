package tw.member.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name="VERIFICATION")
public class Verification {
	
	public Verification() {}
	
	public Verification( String memberId, String verifyCode) {
		this.memberId = memberId;
		this.verifyCode = verifyCode;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "VCID")
	private Integer vcId;
	
	@Column(name = "MEMBERID")
	private String memberId;
	
	@Column(name = "VERIFYCODE")
	private String verifyCode ;

	public Integer getVcId() {
		return vcId;
	}

	public void setVcId(Integer vcId) {
		this.vcId = vcId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getVerifyCode() {
		return verifyCode;
	}

	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}
	
	

}
