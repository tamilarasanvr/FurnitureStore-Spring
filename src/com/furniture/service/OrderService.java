package com.furniture.service;

import java.util.List;

import com.furniture.entity.AddCartListBean;
import com.furniture.entity.OrderBean;

public interface OrderService {

	OrderBean add(OrderBean orderBean);

	List<OrderBean> viewOrderHistory(int userId, AddCartListBean addCartList);

	

}
