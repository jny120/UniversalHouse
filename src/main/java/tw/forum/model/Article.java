package tw.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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

@Entity
@Component
@Table(name = "article")
public class Article implements Serializable{

	private static final long serialVersionUID = 1L;

	@ManyToOne
	@JsonIgnoreProperties("article")
	@JoinColumn(name = "MEMBERPK", updatable = false)
	private Member member;

	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}

	@JsonIgnore
	@JsonIgnoreProperties("article")
	@OneToMany(mappedBy = "article", cascade = CascadeType.ALL)
	private List<Status> userStatus = new ArrayList<Status>();

	public List<Status> getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(List<Status> userStatus) {
		this.userStatus = userStatus;
	}

	
	@JsonIgnore
	@JsonIgnoreProperties("article")
	@OneToMany(mappedBy = "article", cascade = CascadeType.ALL)
	private List<Comment> comments = new ArrayList<Comment>();

	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ARTICLEID")
	private Integer articleId;

	@Column(name = "MEMBERPK", insertable = false, updatable = false)
	private Integer memberPk;

	@Column(name = "UPDATETIME")
	private Timestamp updateTime;
	
	@Column(name = "TOPICNAME")
	private String topicName;

	@Column(name = "TITLE")
	private String title;

	@Column(name = "CONTENT")
	private String content;

	@Column(name = "THUMBUP")
	private Integer thumbUp;

	@Column(name = "UNLIKE")
	private Integer unlike;

	@Column(name = "VIEWS")
	private Integer views;
	
	@Column(name = "STATUS")
	private String status;
	
	@Column(name = "COVER")
	private byte[] cover;
	
	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getMemberPk() {
		return memberPk;
	}

	public void setMemberPk(Integer memberPk) {
		this.memberPk = memberPk;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getTopicName() {
		return topicName;
	}

	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getThumbUp() {
		return thumbUp;
	}

	public void setThumbUp(Integer thumbUp) {
		this.thumbUp = thumbUp;
	}

	public Integer getUnlike() {
		return unlike;
	}

	public void setUnlike(Integer unlike) {
		this.unlike = unlike;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Integer getViews() {
		return views;
	}
	
	public void setViews(Integer views) {
		this.views = views;
	}
	
	public byte[] getCover() {
		return cover;
	}
	
	public void setCover(byte[] cover) {
		this.cover = cover;
	}

}
