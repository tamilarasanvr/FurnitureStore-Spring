package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.entity.AddCartListBean;
import com.furniture.entity.OrderBean;
import com.furniture.repository.AddCartListRepository;
import com.furniture.repository.OrderRepository;

@Transactional
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderRepository orderRepository;
	@Autowired
	AddCartListRepository addCart;


	public OrderBean add(OrderBean orderBean) {
	OrderBean order=orderRepository.save(orderBean);
	//List<AddCartListBean> list=addCart.findByproductId() ;
		return order;
	}


	
	public List<OrderBean> viewOrderHistory(int userId, AddCartListBean addCartList) {
		// TODO Auto-generated method stub
	List<OrderBean> order=orderRepository.findByuserId(userId);	
		return order;
	}



	
	

}
