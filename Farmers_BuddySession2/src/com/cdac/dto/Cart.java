package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart {
	
	@Id
	@Column(name="cart_id")
	@GeneratedValue
	private int cart_id;
	public Cart(int cart_id) {
		super();
		this.cart_id = cart_id;
	}
	@Column(name="cart_prName")
	private String cartProductName;
	@Column(name="cart_prDetail")
	private String cartProductDetail;
	@Column(name="cart_prPrice")
	private float cartProductPrice;
	private int userId;
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}

	public String getCartProductDetail() {
		return cartProductDetail;
	}

	public void setCartProductDetail(String cartProductDetail) {
		this.cartProductDetail = cartProductDetail;
	}

	public float getCartProductPrice() {
		return cartProductPrice;
	}

	public void setCartProductPrice(float cartProductPrice) {
		this.cartProductPrice = cartProductPrice;
	}

	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", cartProductName=" + cartProductName + ", cartProductDetail="
				+ cartProductDetail + ", cartProductPrice=" + cartProductPrice + ", userId=" + userId + "]";
	}

	
	
	
	
}
