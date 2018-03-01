package com.furniture.service;



import java.util.List;

import com.furniture.entity.UserBean;


public interface FurnitureService {

	UserBean add(UserBean user);
	int validate(UserBean user);
	String retriveName(UserBean user);
	List<UserBean> Userlist();
	
	List<UserBean> searchUser(UserBean user);
	/*UserBean update(UserBean user);*/
	List<UserBean> User(UserBean user);
	int retriveId(UserBean user);
	UserBean view(int id, UserBean user);
	UserBean update(UserBean user);
	UserBean retreiveUser(UserBean user);
	/*UserBean view(UserBean user);*/
	



}
