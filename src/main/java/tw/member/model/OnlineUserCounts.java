//package tw.member.model;
//
//import java.util.Date;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "ONLINEUSERCOUNTS")
//public class OnlineUserCounts {
//
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private Long id;
//
//	@Column(name = "HOUR")
//	private Integer hour;
//
//	@Column(name = "USERCOUNT")
//	private Integer userCount;
//	
//	@Column(name = "MAXUSERCOUNT")
//	private Integer maxUserCount;
//
//	@Column(name = "USEDATE")
//	private Date useDate;
//
//	
//	
//	// Getters and Setters
//	public Integer getHour() {
//		return hour;
//	}
//
//	public void setHour(Integer hour) {
//		this.hour = hour;
//	}
//
//	public Integer getUserCount() {
//		return userCount;
//	}
//
//	public void setUserCount(Integer userCount) {
//		this.userCount = userCount;
//	}
//
//	public Date getUseDate() {
//		return useDate;
//	}
//
//	public void setUseDate(Date date) {
//		this.useDate = date;
//	}
//
//	public Long getId() {
//		return id;
//	}
//
//	public Integer getMaxUserCount() {
//		return maxUserCount;
//	}
//
//	public void setMaxUserCount(Integer maxUserCount) {
//		this.maxUserCount = maxUserCount;
//	}
//	
//	
//
//
//	
//
//	
//
//}
