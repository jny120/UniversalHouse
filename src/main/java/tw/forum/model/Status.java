package tw.forum.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "status")
public class Status {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "STATUSID")
	private Integer statusId;
	
	@Column(name = "ARTICLEID")
	private Integer articleId;

	@Column(name = "MEMBERPK")
	private Integer memberPk;

	@Column(name = "REPORTED")
	private Integer reported;
	
	@Column(name = "FAVORITE")
	private Integer favorite;
	
	@Column(name = "THUMBUP")
	private Integer thumbUp;
	
	@Column(name = "UNLIKE")
	private Integer unlike;

	
	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}

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

	public Integer getReported() {
		return reported;
	}

	public void setReported(Integer reported) {
		this.reported = reported;
	}

	public Integer getFavorite() {
		return favorite;
	}

	public void setFavorite(Integer favorite) {
		this.favorite = favorite;
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

}
