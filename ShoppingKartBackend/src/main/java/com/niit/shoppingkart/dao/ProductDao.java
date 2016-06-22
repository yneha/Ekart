package com.niit.shoppingkart.dao;

import java.util.List;

import com.niit.shoppingkart.bean.Product;

public interface ProductDao {

	public List<Product> list();
	public Product get(String pdtid);
	public void update(Product pdt);
	public void delete(String id);
}
