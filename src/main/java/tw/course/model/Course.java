package tw.course.model;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Blob;
import java.sql.SQLException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "course")
@Component
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "COURSEID")
	private Integer courseId;

	@Column(name = "COURSENAME")
	private String courseName;

	@Column(name = "CATEGORY")
	private String category;

	@Column(name = "TEACHER")
	private String teacher;

	@Column(name = "PRICE")
	private Double price;

	@Column(name = "COURSETYPE")
	private String courseType;

	@Column(name = "STARTDATE")
	private String startDate;

	@Column(name = "ENDDATE")
	private String endDate;

	@Column(name = "STARTTIME")
	private String startTime;

	@Column(name = "ENDTIME")
	private String endTime;

	@Column(name = "IMAGE")
	private Blob image;

	public Course(Integer courseId, String courseName, String category, String teacher, Integer price,
			String courseType, String startDate, String endDate, String startTime, String endTime, Blob imgblob) {

	}

	public Course() {

	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}


	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getCourseType() {
		return courseType;
	}

	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public void setImage1(Blob blob) {
		this.image=blob;
	}
	
	public Blob getImage() {
		return image;
	}

	// 將圖片由MultipartFile轉成Blob
	public void setImage(MultipartFile image) throws IOException, SerialException, SQLException {
//		
		if (image.getBytes().length > 2) {

			byte[] bytes = image.getBytes();
			Blob Imgblob = bytesToBlob(bytes);
			this.image = Imgblob;
		} else {
			this.image = null;
		}
	}

	private Blob bytesToBlob(byte[] bytes) throws SerialException, SQLException {
		return new SerialBlob(bytes);
	}

	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", category=" + category + ", teacher="
				+ teacher + ", price=" + price + ", courseType=" + courseType + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", startTime=" + startTime + ", endTime=" + endTime + ", image=" + image
				+ "]";
	}

}
