package com.furniture.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="furnitureusers")

public class UserBean implements Serializable {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SEQ")
	 @SequenceGenerator(name="SEQ",sequenceName="furuserid_seq",allocationSize=1,initialValue=1)
@Id	
private int userId;	
private String userName;
private String doorNo;
private String street;
private String state;
private String city;
private long pinCode;
private long phone;
private String emailId;
private String password;
private String userType="user";

public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}

public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getDoorNo() {
	return doorNo;
}
public void setDoorNo(String doorNo) {
	this.doorNo = doorNo;
}
public String getStreet() {
	return street;
}
public void setStreet(String street) {
	this.street = street;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public long getPinCode() {
	return pinCode;
}
public void setPinCode(long pinCode) {
	this.pinCode = pinCode;
}
public long getPhone() {
	return phone;
}
public void setPhone(long phone) {
	this.phone = phone;
}
public String getEmailId() {
	return emailId;
}
public void setEmailId(String emailId) {
	this.emailId = emailId;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getUserType() {
	return userType;
}
public void setUserType(String userType) {
	this.userType = userType;
}


}
