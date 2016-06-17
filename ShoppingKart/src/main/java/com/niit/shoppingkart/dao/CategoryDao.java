package com.niit.shoppingkart.dao;

import java.util.List;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.niit.shoppingkart.bean.Category;

@Repository 
public class CategoryDao {
	
	public List <Category> getallCategory()
	{
		List <Category> list=new ArrayList<Category>();
		Category c1=new Category();
		c1.setPdtid("A");
		c1.setPdtname("teddy");
		c1.setPdtdesc("A CUTE TEDDY BEAR");
		
		list.add(c1);
		
		c1=new Category();
		c1.setPdtid("B");
		c1.setPdtname("Bear");
		c1.setPdtdesc("Brown Bear");
		
		list.add(c1);
		
		c1=new Category();
		c1.setPdtid("C");
		c1.setPdtname("Monopoly");
		c1.setPdtdesc("Board Game");
		
		list.add(c1);
		return list;
		
	}

}
