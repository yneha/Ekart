package com.niit.shoppingkart.dao;

import java.util.List;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.Supplier;

public interface SupplierDao {
	public List<Supplier> list();
	public List<Supplier> showlist();
	public Supplier get(String s_id);
	public Supplier getByName(String s_name);
	public void update(Supplier pdt);
	public void delete(String s_id);
	
}
