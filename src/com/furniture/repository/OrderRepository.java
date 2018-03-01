package com.furniture.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.furniture.entity.OrderBean;

public interface OrderRepository extends JpaRepository<OrderBean, Integer> {

	List<OrderBean> findByuserId(int userId);

}
