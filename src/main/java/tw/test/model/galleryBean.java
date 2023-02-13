package tw.test.model;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "gallery")
@Component
public class galleryBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "imagepk")
	private Integer imagepk;

	@Column(name = "imagenumber")
	private String imagenumber;

	@Column(name = "testimage")
	private byte[] testImage;

	@JsonIgnore
	@JsonIgnoreProperties("gallery")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "gallerybean")
	private Collection<totalScore> total;

	public galleryBean(String answer, byte[] testImage) {
		super();
		this.imagenumber = answer;
		this.testImage = testImage;
	}

	public galleryBean(Integer imagePk, String imageNumber, byte[] testImage, Set<totalScore> total) {
		super();
		this.imagepk = imagePk;
		this.imagenumber = imageNumber;
		this.testImage = testImage;
		this.total = total;
	}

	public galleryBean() {
	}

	public Collection<totalScore> getGallery() {
		return total;
	}

	public Collection<totalScore> getTotal() {
		return total;
	}

	public void setTotal(Set<totalScore> total) {
		this.total = total;
	}

	public void setGallery(Set<totalScore> total) {
		this.total = total;
	}

	// public Blob partToBlob(Part part) throws IOException, SerialException,
	// SQLException{
	// //partImage轉inputstream
	// InputStream is = part.getInputStream();
	// long len = part.getSize();
	//
	// byte[] b = new byte[(int) len];
	// //is資料寫入byte矩陣
	// is.read(b);
	// Blob blob = null;
	// //SerialBlob建構子 new一個Blob物件
	// blob = new SerialBlob(b);
	//
	// return blob;
	//
	// }

	public Integer getImagePk() {
		return imagepk;
	}

	public void setImagePk(Integer imagePk) {
		this.imagepk = imagePk;
	}

	public String getImageNumber() {
		return imagenumber;
	}

	public void setImageNumber(String imageNumber) {
		this.imagenumber = imageNumber;
	}

	public byte[] getTestImage() {
		return testImage;
	}

	public void setTestImage(byte[] testImage) {
		this.testImage = testImage;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("galleryBean [imagePk=");
		builder.append(imagepk);
		builder.append(", imageNumber=");
		builder.append(imagenumber);
		builder.append(", testImage=");
		builder.append(testImage);
		builder.append(", totalScore=");
		builder.append("]");
		return builder.toString();
	}
}
