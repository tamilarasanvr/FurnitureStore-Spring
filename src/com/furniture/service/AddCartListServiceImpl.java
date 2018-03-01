package com.furniture.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.entity.AddCartListBean;
import com.furniture.repository.AddCartListRepository;

@Transactional
@Service
public class AddCartListServiceImpl implements AddCartListService{

	@Autowired
	AddCartListRepository addCartListRepository;


	public AddCartListBean add(AddCartListBean addCartList) {
		// TODO Auto-generated method stub
		System.out.println(addCartList.getProductName());
		System.out.println(addCartList.getImage());
		AddCartListBean addCart=addCartListRepository.save(addCartList);
		
		return addCart;
	}



	/*public AddCartListBean view(AddCartListBean addCartList) {
		// TODO Auto-generated method stub
		
		AddCartListBean cartList=addCartListRepository.findByproductId(addCartList.getProductId());
		return cartList;
	}

*/


	/*public List<AddCartListBean> viewCartList(AddCartListBean addCartList) {
		// TODO Auto-generated method stub
		
		List<AddCartListBean> cartList=addCartListRepository.findByuserId(addCartList.getUserId());
		List<AddCartListBean> cartList=addCartListRepository.findByuserId(addCartList.getUserId());
		
		return cartList;
		System.out.println(cartList.getPrice());
		}

*/

	@Override
	public List<AddCartListBean> viewCartList(int userId,AddCartListBean addCartList) {
		// TODO Auto-generated method stub
		List<AddCartListBean> list=addCartListRepository.findByuserId(userId);
		return list;
	}




	/*public AddCartListBean remove(AddCartListBean addCart) {
		// TODO Auto-generated method stub
		AddCartListBean list=addCartListRepository.deleteByproductId(addCart.getProductId());
		return list;
	}

*/

/*	public List<AddCartListBean> viewCart() {
		// TODO Auto-generated method stub
		List<AddCartListBean> viewCart=addCartListRepository.findAll();
		return viewCart;
	}
*/
	}
