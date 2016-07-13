package com.niit.shoppingkart.dao;

import java.util.List;

import org.hibernate.Query;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.ProductInfo;

public interface ProductDao {

	public List<Product> list();
	public List<Product> gets(String catname);
	public List<Product> showlist();
	public Product getByName(String catname);
	public List<Product> retrivelist();
	public void retrive(String catid);
	public Product get(String catid);
	public void save(Product pdt);
	public void delete(String catid);
	
}
