package com.furniture.service;

import java.util.List;



import com.furniture.entity.ProductBean;


public interface ProductService  {
	
	List<ProductBean> listProduct();
/*
	boolean validate(ProductBean product);
	String retriveName(ProductBean product);*/
	

	ProductBean add(ProductBean product);

	List<ProductBean> Productlist();

	List<ProductBean> searchProduct(ProductBean product);

	ProductBean updateProduct(ProductBean product);

	ProductBean update(ProductBean product);


	ProductBean view(ProductBean product);


	List<ProductBean> findBed(ProductBean product);


	List<ProductBean> findChair(ProductBean product);


	String retrieveName(ProductBean product);


	List<ProductBean> findDoor(ProductBean product);


	List<ProductBean> findTable(ProductBean product);


	List<ProductBean> findTvstand(ProductBean product);

/*
	ProductBean addCart(ProductBean product);*/


/*	AddCart addCart(AddCart addCart);
*/



	

	

	

}
