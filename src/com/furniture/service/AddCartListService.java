package com.furniture.service;



import java.util.List;

import com.furniture.entity.AddCartListBean;

public interface AddCartListService {

	AddCartListBean add(AddCartListBean addCartList);

	/*AddCartListBean view(AddCartListBean addCartList);
*/
	/*List<AddCartListBean> viewCartList(AddCartListBean addCartList);*/

	List<AddCartListBean> viewCartList(int userId, AddCartListBean addCartList);

	/*AddCartListBean remove(AddCartListBean addCart);*/

	

	/*List<AddCartListBean> viewCart();*/

	

}
