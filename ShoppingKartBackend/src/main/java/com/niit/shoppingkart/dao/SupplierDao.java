package com.niit.shoppingkart.dao;

import java.util.List;

import com.niit.shoppingkart.bean.Supplier;

public interface SupplierDao {
	public List<Supplier> list();
	public Supplier get(int s_id);
	public void update(Supplier pdt);
	public void delete(int s_id);
	
}
