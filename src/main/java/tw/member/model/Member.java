package tw.member.model;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.sql.Blob;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import tw.forum.model.Article;
import tw.project.evaluation.model.Evaluation;
import tw.project.project.model.Project;

@Entity
@Table(name = "member")
@Component
public class Member implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MEMBERPK")
	private Integer memberPk;
	
	
	@Column(name = "MEMBERID")
	private String memberId;

	@Column(name = "NAME")
	private String name;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "LOCATION")
	private String location;

	@Column(name = "EMAIL")
	private String email;

	@Column(name = "GENDER")
	private String gender;

	@Column(name = "BIRTHDAY ")
	private Date birthday;

	@Column(name = "REGISTERTIME")
	private Timestamp registerTime;

	@JsonIgnore
	@Column(name = "MEMBERIMAGE")
	private Blob memberImage;

	@Column(name = "LASTLOGIN")
	private Timestamp lastLogin;

	@Column(name = "VERIFICATION")
	private Integer verification;

	@Column(name = "PERMISSION")
	private Integer permission;

	@Column(name = "HAVEIMG")
	private boolean haveImg;

	@JsonIgnore
	@JsonIgnoreProperties("member")
	@OneToMany(mappedBy = "memberUser", cascade = CascadeType.ALL)
	private List<Friendship> fsList;
	
	@JsonIgnore
	@JsonIgnoreProperties("member")
	@OneToMany(mappedBy = "memberFriend", cascade = CascadeType.ALL)
	private List<Friendship> memberFriendList;
	
	@JsonIgnore
	@OneToMany(mappedBy = "sender", cascade = CascadeType.ALL)
	private List<ChatHistory> sender;
	
	@JsonIgnore
	@JsonIgnoreProperties("member")
	@OneToMany(mappedBy = "receiver", cascade = CascadeType.ALL)
	private List<ChatHistory> receiver;

	@JsonIgnore
	@JsonIgnoreProperties("member")
	@OneToMany(mappedBy = "member", cascade = CascadeType.ALL)
	private List<Article> articles = new ArrayList<Article>();
	

	@JsonIgnore
	@JsonIgnoreProperties("member")
	@OneToMany(mappedBy = "member", cascade = CascadeType.ALL)
	private List<Project> projects = new ArrayList<Project>();
	
	@JsonIgnore
	@JsonIgnoreProperties("member")
	@OneToMany(mappedBy = "member", cascade = CascadeType.ALL)
	private List<Evaluation> evaluations = new ArrayList<Evaluation>();

	@JsonIgnore
	@JsonIgnoreProperties("Servicer")
	@OneToMany(mappedBy = "member", cascade = CascadeType.ALL)
	private List<Evaluation> ServiceEvaluations = new ArrayList<Evaluation>();
	
	public Member() {
	}

	public Integer getMemberPk() {
		return memberPk;
	}

	public void setMemberPk(Integer memberPk) {
		this.memberPk = memberPk;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date date) {
//		Date date = new SimpleDateFormat("yyyy.MM.dd").parse(birthday);
		this.birthday = date;
	}

	public Timestamp getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime() {
		java.util.Date date = new java.util.Date();
		Timestamp ts = new Timestamp(date.getTime());
		this.registerTime = ts;
	}

	public Blob getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(Blob memberImage) {
		this.haveImg = true;
		this.memberImage = memberImage;
	}

	public Timestamp getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Timestamp time) {
		this.lastLogin = time;
	}

	public Integer getVerification() {
		return verification;
	}

	public void setVerification(Integer verification) {
		this.verification = verification;
	}

	public Integer getPermission() {
		return permission;
	}

	public void setPermission(Integer permission) {
		this.permission = permission;
	}

	public boolean isHaveImg() {
		return haveImg;
	}
	
	public List<Friendship> getFriendship() {
		return fsList;
	}

	public void setFriendship(List<Friendship> fsList) {
		this.fsList = fsList;
	}

	public List<Article> getArticle() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	
	public Blob partToBlob(Part part) throws SerialException, SQLException, IOException {
		// partImage轉inputstream
		InputStream is = part.getInputStream();
		long len = part.getSize();

		byte[] b = new byte[(int) len];
		// is資料寫入byte矩陣
		is.read(b);
		Blob blob = null;
		// SerialBlob建構子 new一個Blob物件
		blob = new SerialBlob(b);
		is.close();

		return blob;
	}
	
}