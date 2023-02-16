package tw.product.model;

import tw.course.model.Course;

public class ShoppingCart {

	private  Course cbeam;
	
	private Integer cartNum;

	public  ShoppingCart() {
		
	}


	public ShoppingCart(Course cbeam, Integer cartNum) {
		this.cbeam = cbeam;
		this.cartNum = cartNum;
	}


	public Course getCbeam() {
		return cbeam;
	}


	public void setCbeam(Course cbeam) {
		this.cbeam = cbeam;
	}


	public Integer getCartNum() {
		return cartNum;
	}


	public void setCartNum(Integer cartNum) {
		this.cartNum = cartNum;
	}


	@Override
	public String toString() {
		return "ShoppingCart [cbeam=" + cbeam + ", cartNum=" + cartNum + "]";
	}


	//計算購物車內所有商品的合計金額(每項商品的單價*數量的總和)
//	public double getSubTotal(){
//		double subTotal = 0 ;
//
//			double price = cbeam.getPrice();
//		
//			subTotal +=  price*cartNum;
//		
//		return subTotal;
//	}
	
}
