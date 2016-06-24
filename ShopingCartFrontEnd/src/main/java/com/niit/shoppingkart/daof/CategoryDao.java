package com.niit.shoppingkart.daof;

import java.util.List;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.niit.shoppingkart.beanf.Category;

@Repository 
public class CategoryDao {
	
	public List <Category> getallCategory()
	{
		List <Category> list=new ArrayList<Category>();
		Category c1=new Category();
		c1.setPdtid("A");
		c1.setPdtname("Teddy");
		c1.setPdtdesc("Soft toys");
		
		list.add(c1);
		
		c1=new Category();
		c1.setPdtid("B");
		c1.setPdtname("Bear");
		c1.setPdtdesc("Soft toys");
		
		list.add(c1);
		
		c1=new Category();
		c1.setPdtid("C");
		c1.setPdtname("Monopoly");
		c1.setPdtdesc("Board Game");
		
		list.add(c1);
		
		c1=new Category();
		c1.setPdtid("D");
		c1.setPdtname("Lego");
		c1.setPdtdesc("Building Blocks");
		
		list.add(c1);
		c1=new Category();
		c1.setPdtid("E");
		c1.setPdtname("Cars");
		c1.setPdtdesc("Remote Control");
		
		list.add(c1);
		c1=new Category();
		c1.setPdtid("F");
		c1.setPdtname("Funskool");
		c1.setPdtdesc("Learning Games");
		
		list.add(c1);
		return list;
		
	}

}
