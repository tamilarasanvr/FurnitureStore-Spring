package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.entity.ProductBean;
import com.furniture.entity.UserBean;
import com.furniture.repository.ProductRepository;

@Transactional
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;

	public List<ProductBean> listProduct() {
		// TODO Auto-generated method stub
		List<ProductBean> list1 = productRepository.findAll();
		return list1;
	}
/*
	public boolean validate(ProductBean product) {
		// TODO Auto-generated method stub
		boolean isValid = false;
		List<ProductBean> list = productRepository.findAll();
		for (int i = 0; i < list.size(); i++) {
			if ((list.get(i).getProductId()).contentEquals(product
					.getProductId())) {
				isValid = true;
			}
		}

		return isValid;
	}

	@Override
	public String retriveName(ProductBean product) {
		// TODO Auto-generated method stub

		String name = null;
		List<ProductBean> listid = productRepository.findAll();
		for (int i = 0; i < listid.size(); i++) {
			if ((listid.get(i).getProductId()).contentEquals(product
					.getProductId())) {
				name = listid.get(i).getProductId();
			}

		}

		return name;

	}*/

	/*public String retriveId(ProductBean product) {
	int proId = null;
		List<ProductBean> listid = productRepository.findAll();
		for (int i = 0; i < listid.size(); i++) {
			if ((listid.get(i).getProductId()).contentEquals(product
					.getProductId())) {
				proId = listid.get(i).getProductId();
			}

		}
		return proId;

	}*/


	public ProductBean add(ProductBean product) {
		// TODO Auto-generated method stub
		
		ProductBean add=productRepository.save(product);
		return add;
	}

	
	public List<ProductBean> Productlist() {
		// TODO Auto-generated method stub
		List<ProductBean> list1 =productRepository.findAll();
		return list1;
	
	}

	
	public List<ProductBean> searchProduct(ProductBean product) {
		// TODO Auto-generated method stub
		List<ProductBean> list=productRepository.findByproductCategory(product.getProductCategory());
		return list;
		
	}

	
	public ProductBean updateProduct(ProductBean product) {
		// TODO Auto-generated method stub
		ProductBean list=productRepository.findOne(product.getProductId());
		return list;
	}





	public ProductBean update(ProductBean product) {
		// TODO Auto-generated method stub
		
		ProductBean update=productRepository.findOne(product.getProductId());

		if(update!=null){
			update.setProductId(update.getProductId());
			update.setProductCategory(product.getProductCategory());
			update.setProductName(product.getProductName());
			update.setPrice(product.getPrice());
			update.setQuentity(product.getQuentity());
			productRepository.saveAndFlush(update);
		
}
		return update;
	}


	public ProductBean view(ProductBean product) {
		// TODO Auto-generated method stub
		ProductBean view=productRepository.findOne(product.getProductId());
		return view;
	}


	public List<ProductBean> findBed(ProductBean product) {
		// TODO Auto-generated method stub
		List<ProductBean> viewBeds=productRepository.findByProductCategory(product.getProductCategory());
		/*for (int i = 0; i < viewBeds.size(); i++) {
		System.out.println(viewBeds.get(i).getProductCategory()+" "+viewBeds.get(i).getProductName());
		}*/
		return viewBeds;
	}


	public List<ProductBean> findChair(ProductBean product) {
		// TODO Auto-generated method stub
		List<ProductBean> viewChair=productRepository.findByProductCategory(product.getProductCategory());
		return viewChair;
	}


	public String retrieveName(ProductBean product) {
		// TODO Auto-generated method stub
		String name=null;
		List<ProductBean> list = productRepository.findAll();
		for(int i=0;i<list.size();i++){
			if((list.get(i).getProductCategory().contentEquals(product.getProductCategory())))
			{
				name= list.get(i).getProductCategory();			
				}

}


		return name;
		
	}


	public List<ProductBean> findDoor(ProductBean product) {
		// TODO Auto-generated method stub
		List<ProductBean> findDoor=productRepository.findByproductCategory(product.getProductCategory());
		return findDoor;
	}


	public List<ProductBean> findTable(ProductBean product) {
		// TODO Auto-generated method stub
		List<ProductBean> findTable=productRepository.findByproductCategory(product.getProductCategory());
		return findTable;
	}


	public List<ProductBean> findTvstand(ProductBean product) {
		// TODO Auto-generated method stub
		List<ProductBean> findTvstand=productRepository.findByproductCategory(product.getProductCategory());
		return findTvstand;
	}


	
	
	

	


	

}
