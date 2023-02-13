package tw.space.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "SPACERENTAL")
@Component
public class Space implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SPACENO")
	private int spaceNo;

	@Column(name = "SPACENAME")
	private String spaceName;

	@Column(name = "CITY")
	private String city;
	
	@Column(name = "ADDRESS	")
	private String address;
	
	@Column(name = "ACCOMMODATE")
	private int accommodate;
	
	@Column(name = "SPACETYPE")
	private String spaceType;
	
	@Column(name = "PRICE")
	private int price;
	
	@Column(name = "PHONE")
	private String phone;
	
	@Column(name = "EMAIL")
	private String email;
	
	@Column(name = "FACILITY_1")
	private String facility_1;
	
	@Column(name = "INTRO")
	private String intro;
	
	@JsonIgnore
	@Column(name = "PIC")
	private Blob pic;
	
	@Column(name = "STATUS")
	private int status;
	
	public Space() {
		this.status = 1;
		}

	
	//constructor 修改用
	public Space(String spaceName, String city, String address, int accommodate, String spaceType, int price,
			String phone, String email, String facility_1, String intro, Blob pic, int status) {
		super();
		this.spaceName = spaceName;
		this.city = city;
		this.address = address;
		this.accommodate = accommodate;
		this.spaceType = spaceType;
		this.price = price;
		this.phone = phone;
		this.email = email;
		this.facility_1 = facility_1;
		this.intro = intro;
		this.pic = pic;
		this.status = status;
	}


	//constructor 新增用
	public Space(int spaceNo, String spaceName, String city, String address, int accommodate, String spaceType,
			int price, String phone, String email, String facility_1, String intro, Blob pic, int status) {
		this.spaceNo = spaceNo;
		this.spaceName = spaceName;
		this.city = city;
		this.address = address;
		this.accommodate = accommodate;
		this.spaceType = spaceType;
		this.price = price;
		this.phone = phone;
		this.email = email;
		this.facility_1 = facility_1;
		this.intro = intro;
		this.pic = pic;
		this.status = status;
	}
	

	public int getSpaceNo() {
		return spaceNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public String getSpaceName() {
		return spaceName;
	}

	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAccommodate() {
		return accommodate;
	}

	public void setAccommodate(int accommodate) {
		this.accommodate = accommodate;
	}

	public String getSpaceType() {
		return spaceType;
	}

	public void setSpaceType(String spaceType) {
		this.spaceType = spaceType;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFacility_1() {
		return facility_1;
	}

	public void setFacility_1(String facility_1) {
		this.facility_1 = facility_1;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Blob getPic() {
		return pic;
	}

	public void setPic(Blob pic) {
		this.pic = pic;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	

}
