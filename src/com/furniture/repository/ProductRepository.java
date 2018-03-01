package com.furniture.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.furniture.entity.ProductBean;

public interface ProductRepository extends JpaRepository<ProductBean, Integer>{

	List<ProductBean> findByproductCategory(String productCategory);

	List<ProductBean> findByproductName(String productName);

	

	List<ProductBean> findByProductCategory(String productCategory);

	

	
}
