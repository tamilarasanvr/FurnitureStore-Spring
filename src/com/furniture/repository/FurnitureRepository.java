package com.furniture.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.furniture.entity.UserBean;

public interface FurnitureRepository extends JpaRepository<UserBean, Integer> {


	List<UserBean> findByUserName(String userName);

	UserBean findOneByuserId(int userId);

	
}

