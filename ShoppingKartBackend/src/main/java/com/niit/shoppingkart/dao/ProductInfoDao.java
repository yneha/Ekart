package com.niit.shoppingkart.dao;

import java.util.List;

import com.niit.shoppingkart.bean.ProductInfo;



public interface ProductInfoDao {

	public List<ProductInfo> list();
	public List<ProductInfo> showlist();
	public ProductInfo get(String pdtid);
	public List<ProductInfo> gets(String name);
	public void update(ProductInfo pdt);
	public void delete(String pdtid);
	
	
	
}
