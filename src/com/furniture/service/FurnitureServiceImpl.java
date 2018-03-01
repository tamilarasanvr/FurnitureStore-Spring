package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;






import com.furniture.entity.UserBean;
import com.furniture.repository.FurnitureRepository;




@Transactional
@Service

public class FurnitureServiceImpl implements FurnitureService{
	
	
	@Autowired
	FurnitureRepository furnitureRepository;
	
	
	

	public UserBean add(UserBean user) {
	
		UserBean registerUser=furnitureRepository.save(user);
		return registerUser;
	}


	
	public int validate(UserBean user) {
		int isValid=0;
		List<UserBean> list=furnitureRepository.findAll();
		
		for(int i=0;i<list.size();i++)
		{
		if(((list.get(i).getEmailId()).contentEquals(user.getEmailId()))  && ( (list.get(i).getPassword()).contentEquals(user.getPassword())) && ((list.get(i)).getUserType()).contentEquals("user") )
		
			 isValid=1;
		else if (((list.get(i).getEmailId()).contentEquals(user.getEmailId()))  && ( (list.get(i).getPassword()).contentEquals(user.getPassword())) && ((list.get(i)).getUserType()).contentEquals("admin") )
			isValid=2;
			
		}
	
			
		
		return isValid;
		
	}

	
	public String retriveName(UserBean user) {
		// TODO Auto-generated method stub
		String name=null;
		List<UserBean> listid = furnitureRepository.findAll();
				for(int i=0;i<listid.size();i++){
					if((listid.get(i).getEmailId().contentEquals(user.getEmailId())))
					{
						name= listid.get(i).getUserName();
					}
		
	}

	
				return name;
}

	public int retriveId(UserBean user) {
		// TODO Auto-generated method stub
		int id=0;
		List<UserBean> listid = furnitureRepository.findAll();
				for(int i=0;i<listid.size();i++){
					if((listid.get(i).getEmailId().contentEquals(user.getEmailId())))
					{
						id=listid.get(i).getUserId();
					}
		
	}

	
				return id;
	}
	
	
	public UserBean view(UserBean user) {
		UserBean view=furnitureRepository.findOne(user.getUserId());
		return view;
	}  
	
	
	public List<UserBean> Userlist() {
		List<UserBean> list1 =furnitureRepository.findAll();
		for(int i=0;i<list1.size();i++)
		{
			if((list1.get(i).getUserType()).contentEquals("admin"))
		{
		list1.remove(i);	
		}
		}
		return list1;
		
	}

	

	


	public List<UserBean> searchUser(UserBean user) {
		// TODO Auto-generated method stub
		List<UserBean> list=furnitureRepository.findByUserName(user.getUserName());
		return list;
	}



	
	


	public List<UserBean> User(UserBean user) {
		// TODO Auto-generated method stub
		List<UserBean> list=furnitureRepository.findByUserName(user.getUserName());
		return list;
	}



	public UserBean update(UserBean user) {
	// TODO Auto-generated method stub
	UserBean update=furnitureRepository.findOne(user.getUserId());

	if(update!=null){
				update.setUserId(user.getUserId());
				update.setUserName(user.getUserName());
				update.setDoorNo(user.getDoorNo());
				update.setStreet(user.getState());
				update.setState(user.getStreet());
				update.setCity(user.getCity());
				update.setPinCode(user.getPinCode());
				update.setPhone(user.getPhone());
				update.setEmailId(update.getEmailId());
				update.setPassword(user.getPassword());
				furnitureRepository.saveAndFlush(update);
			
	}
			return update;
		}



	
	public UserBean retreiveUser(UserBean user) {
		// TODO Auto-generated method stub
		
		List<UserBean> list=furnitureRepository.findAll();
		for(int i=0;i<list.size();i++)
		{
		if(((list.get(i).getEmailId()).contentEquals(user.getEmailId()))  && ( (list.get(i).getPassword()).contentEquals(user.getPassword())) &&((list.get(i).getUserType()).contentEquals(user.getUserType())))
		{
			UserBean userInfo=furnitureRepository.findOne(list.get(i).getUserId());
				
			return userInfo;
	}
		}
		return null;

	
	}




	public UserBean view(UserBean user, int id) {
		// TODO Auto-generated method stub
		UserBean view=furnitureRepository.findOne(user.getUserId());
		return view;
	
	}



	@Override
	public UserBean view(int id, UserBean user) {
		// TODO Auto-generated method stub
		UserBean view=furnitureRepository.findOne(id);
		return view;
	}	
}
	
		/*public List<ProductBean> listUser() {
			// TODO Auto-generated method stub
			List<ProductBean> list1=productRepository.findAll();	
			return list1;
		}*/


		
