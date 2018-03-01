package com.furniture.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.furniture.entity.AddCartListBean;

public interface AddCartListRepository extends JpaRepository<AddCartListBean, Integer> {

	List<AddCartListBean> findByuserId(int userId);

	/*AddCartListBean deleteByproductId(int productId);
*/
	//List<AddCartListBean> findByproductId();

	/*List<AddCartListBean> findByuserId(int userId);
*/
/*	List<AddCartListBean> findByuserId(AddCartListBean addCartList);
*/
	/*List<AddCartListBean> findByuserId(int userId);*/

		


}
