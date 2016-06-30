package com.niit.shoppingkart.dao;

import java.util.List;

import com.niit.shoppingkart.bean.ProductInfo;



public interface ProductInfoDao {

	public List<ProductInfo> list();
	public ProductInfo get(int pdtid);
	public void update(ProductInfo pdt);
	public void delete(int pdtid);
	
	
	
}
