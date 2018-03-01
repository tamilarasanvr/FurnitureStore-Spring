package com.furniture.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="orderProduct")
public class OrderBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SEQ")
	 @SequenceGenerator(name="SEQ",sequenceName="serial_seq",allocationSize=1,initialValue=1)
@Id	
private int  serialNo;
private int productId;
private String productName;
private double price;
private int userId;
private String image;
private int quantity;


public int getSerialNo() {
	return serialNo;
}
public void setSerialNo(int serialNo) {
	this.serialNo = serialNo;
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
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
	

}
