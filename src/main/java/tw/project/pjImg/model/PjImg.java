package tw.project.pjImg.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Component;

import tw.project.project.model.Project;


@Entity
@Table(name = "pjimg")
@Component
public class PjImg {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IMGID")
	private int imgID;
	
	@ManyToOne
	@JoinColumn(name = "PJID")
	private Project project;
	
	@Column(name = "PJIMG")
	private byte[] pjImg;

	public PjImg() {
	}
	
	public PjImg(Project project, byte[] pjImg) {
		super();
		this.project = project;
		this.pjImg = pjImg;
	}



	public Integer getImgID() {
		return imgID;
	}

	public void setImgID(int imgID) {
		this.imgID = imgID;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public byte[] getPjImg() {
		return pjImg;
	}

	public void setPjImg(byte[] pjImg) {
		this.pjImg = pjImg;
	}

	public Blob partToBlob(Part part) throws IOException, SerialException, SQLException {
		InputStream is = part.getInputStream();
		long partLong = part.getSize();
		
		byte[] b = new byte[(int) partLong];
		is.read(b);
		Blob blob = null;
		blob = new SerialBlob(b);
		is.close();
		
		return blob;
	}
	
	@Override
	public String toString() {
		return "PjImg [imgID=" + imgID + ", project=" + project + ", pjImg=" + pjImg + "]";
	}

}
