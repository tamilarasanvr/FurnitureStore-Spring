package com.furniture.dao;



public class ProductDAOImpl implements ProductDAO {

	
	@Override
	public String load(String productId) {
		// TODO Auto-generated method stub
		String query="select productId from furniturebeds where productId='"+productId+"'";
		System.out.println(query);
		return query;
	}
	

}
