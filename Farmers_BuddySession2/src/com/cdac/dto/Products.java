package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Products {
	@Id
	@Column(name="product_id")
	@GeneratedValue
	private int productId;
	@Column(name="pName")
	private String productName;
	@Column(name="pDetail")
	private String productDetails;
	
	@Column(name="price")
	private float pr;
	private int userId;
	public Products() {
		super();
	}
	
	public Products(int productId) {
		super();
		this.productId = productId;
	}
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
	public String getProductDetails() {
		return productDetails;
	}
	public void setProductDetails(String productDetails) {
		this.productDetails = productDetails;
	}
	public float getPr() {
		return pr;
	}
	public void setPr(float pr) {
		this.pr = pr;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	
	@Override
	public String toString() {
		return "Products [productId=" + productId + ", productName=" + productName + ", productDetails="
				+ productDetails + ", pr=" + pr + ", userId=" + userId + "]";
	}
	
	
	
}
