package tw.test.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "totalscore")
@Component
public class totalScore implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "imagenumber")
	private String imagenumber;

	@Column(name = "memberid")
	private String memberid;

	@Column(name = "inputradio")
	private String inputradio;

	@Column(name = "inputradio2")
	private String inputradio2;

	@Column(name = "fraction")
	private String fraction;

	@Column(name = "testimage")
	private Blob testimage;

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "fkimgid")
	private galleryBean gallerybean;

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "fkuserid")
	private tester tester;

	public tester getTester() {
		return tester;
	}

	public void setTester(tester tester) {
		this.tester = tester;
	}

	public totalScore() {
		this.imagenumber = "";
		this.memberid = "";
		this.inputradio = "";
		this.inputradio2 = "";
		this.fraction = "";
		Blob blob = null;
		this.testimage = blob;
	}
	// public tester getTester() {
	// return tester;
	// }
	//
	// public void setTester(tester tester) {
	// this.tester = tester;
	// }

	public galleryBean getGallerybean() {
		return gallerybean;
	}

	public void setGallerybean(galleryBean gallerybean) {
		this.gallerybean = gallerybean;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImageNumber() {
		return imagenumber;
	}

	public void setImageNumber(String imageNumber) {
		this.imagenumber = imageNumber;
	}

	public String getMemberId() {
		return memberid;
	}

	public void setMemberId(String memberId) {
		this.memberid = memberId;
	}

	public String getInputRadio() {
		return inputradio;
	}

	public void setInputRadio(String inputRadio) {
		this.inputradio = inputRadio;
	}

	public String getInputRadio2() {
		return inputradio2;
	}

	public void setInputRadio2(String inputRadio2) {
		this.inputradio2 = inputRadio2;
	}

	public String getFraction() {
		return fraction;
	}

	public void setFraction(String fraction) {
		this.fraction = fraction;
	}

	public Blob getTestImage() {
		return testimage;
	}

	public void setTestImage(Blob testImage) {
		this.testimage = testImage;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("totalScore [id=");
		builder.append(id);
		builder.append(", imageNumber=");
		builder.append(imagenumber);
		builder.append(", memberId=");
		builder.append(memberid);
		builder.append(", inputRadio=");
		builder.append(inputradio);
		builder.append(", inputRadio2=");
		builder.append(inputradio2);
		builder.append(", fraction=");
		builder.append(fraction);
		builder.append(", testImage=");
		builder.append(testimage);
		builder.append(", gallerybean=");
		builder.append(gallerybean);
		builder.append(", tester=");
		// builder.append(tester);
		builder.append("]");
		return builder.toString();
	}

}
