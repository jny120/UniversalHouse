package tw.product.model;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name ="orderitem")
public class OrderItem {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="SEQNO")
	Integer seqno; 
	@Column(name="ORDERNO",insertable = false ,updatable = false)
	Integer orderNo; 
	@Column(name="COURSEID")
	Integer courseId;
	@Column(name="COURSENAME")
	String courseName;
	@Column(name="UNITPRICE")
	Double unitPrice;
	@Column(name="AMOUNT")
	Integer amount;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="ORDERNO")
	private Orders orders;
	
	public Orders getOrders() {
		return orders;
	}








	public void setOrders(Orders orders) {
		this.orders = orders;
	}








	public OrderItem() {
		
	}



	



	
	public OrderItem(Integer seqno, Integer courseId, String courseName, Double unitPrice, Integer amount,
			Orders orders) {
		this.seqno = seqno;
		this.courseId = courseId;
		this.courseName = courseName;
		this.unitPrice = unitPrice;
		this.amount = amount;
		this.orders = orders;
	}







	public Integer getSeqno() {
		return seqno;
	}



	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
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



	public Double getUnitPrice() {
		return unitPrice;
	}



	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}



	public Integer getAmount() {
		return amount;
	}



	public void setAmount(Integer amount) {
		this.amount = amount;
	}



	
	
	


	
}
