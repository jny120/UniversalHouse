package tw.product.model;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="orders")
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ORDERNO")
	Integer orderNo;
	@Column(name="MEMBERPK")
	Integer memberPk;
	@Column(name="NAME")
	String name;
	@Column(name="EMAIL")
	String email;
	@Column(name="TOTALPRICE")
	Double totalPrice;
	@Column(name="ORDERDATE")
	Date orderDate;
	
	@JsonIgnore
	@OneToMany(cascade = CascadeType.ALL ,mappedBy = "orders")
	private List<OrderItem> items;
	

	public void setItems(Set<OrderItem> items) {
		
	}
	
	public Orders() {
		
	}
	
	
	


	
	public Orders(Integer orderNo, Integer memberPk, String name, String email, Double totalPrice, Date orderDate) {
		this.orderNo = orderNo;
		this.memberPk = memberPk;
		this.name = name;
		this.email = email;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
	}

	public List<OrderItem> getItems() {
		return items;
	}

	public void setItems(List<OrderItem> items) {
		this.items = items;
	}

	public Integer getOrderNo() {
		return orderNo;
	}



	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}



	public Integer getMemberPk() {
		return memberPk;
	}



	public void setMemberPk(Integer memberPk) {
		this.memberPk = memberPk;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Double getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}



	public Date getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
 	
	
	
}
