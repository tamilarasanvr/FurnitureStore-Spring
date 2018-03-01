package com.furniture.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="furniturebeds2")
public class ProductBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	 @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SEQ")
	 @SequenceGenerator(name="SEQ",sequenceName="furnproduct_seq",allocationSize=1,initialValue=1)
@Id	
private int productId;
private String productCategory;
private String productName;
private double price;
private int quentity;
private String image;
private Date stockDate=new Date();

public Date getStockDate() {
	return stockDate;
}
public void setStockDate(Date stockDate) {
	this.stockDate = stockDate;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}

public String getProductCategory() {
	return productCategory;
}
public void setProductCategory(String productCategory) {
	this.productCategory = productCategory;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getQuentity() {
	return quentity;
}
public void setQuentity(int quentity) {
	this.quentity = quentity;
}

}
