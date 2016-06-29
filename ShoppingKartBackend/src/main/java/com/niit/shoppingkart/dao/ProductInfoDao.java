package com.niit.shoppingkart.dao;

import java.util.List;

import com.niit.shoppingkart.bean.ProductInfo;



public interface ProductInfoDao {

	public List<ProductInfo> list();
	public ProductInfo get(String pdtid);
	public void update(ProductInfo pdt);
	
	
	
}
