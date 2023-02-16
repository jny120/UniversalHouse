package tw.space.model;

public class OrderDetails {
	
	private int orderId;
	private String orderDate;
	private String status;
	private String spaceName;
	private String bookTime;
	private String cPerson;
	private String contact;
	private int spacePrice;
	private String payment;
	private String remark;
	
	public OrderDetails() {
	}
	
	public OrderDetails(int orderId, String orderDate, String status, String spaceName, String bookTime, String cPerson,
			String contact, int spacePrice, String payment, String remark) {
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.status = status;
		this.spaceName = spaceName;
		this.bookTime = bookTime;
		this.cPerson = cPerson;
		this.contact = contact;
		this.spacePrice = spacePrice;
		this.payment = payment;
		this.remark = remark;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSpaceName() {
		return spaceName;
	}
	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}
	public String getBookTime() {
		return bookTime;
	}
	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}
	public String getcPerson() {
		return cPerson;
	}
	public void setcPerson(String cPerson) {
		this.cPerson = cPerson;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public int getSpacePrice() {
		return spacePrice;
	}
	public void setSpacePrice(int spacePrice) {
		this.spacePrice = spacePrice;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "OrderDetails [orderId=" + orderId + ", orderDate=" + orderDate + ", status=" + status + ", spaceName="
				+ spaceName + ", bookTime=" + bookTime + ", cPerson=" + cPerson + ", contact=" + contact
				+ ", spacePrice=" + spacePrice + ", payment=" + payment + ", remark=" + remark + "]";
	}
	
}
