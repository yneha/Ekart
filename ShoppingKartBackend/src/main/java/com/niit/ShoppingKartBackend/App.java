package com.niit.ShoppingKartBackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.dao.ProductDao;


public class App 
{
	static ProductDao  pdtdao;
	@SuppressWarnings("unchecked")
	public static void main( String[] args )
    {
  	
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingkart");
		
		context.refresh();
		pdtdao=  (ProductDao) context.getBean("ProductDao");
		App app= new App();

<<<<<<< HEAD
		Product p=new Product();
		p.setCatname("ghi");p.setStock(120);
		p.setTot_val(14000);
		pdtdao.save(p);
      
			app.print();
=======

       
		Product pdt=new Product();
	
		
		
		pdt.setCatname("a");
		pdt.setStock(2);
		pdt.setTot_val(200);
		pdtdao.save(pdt);
		
		app.print();
		
		
>>>>>>> 7567ab24600c129060ee33bbdf09936f85eb8bdc
    }

    public void print()
    {
    	Product pdt=new Product();
		List<Product> a=new ArrayList<Product>();
		a=pdtdao.showlist();
		for( Product c : a)
			{
			System.out.println(c.getCatid() +":"+c.getStock()+":"+ c.getTot_val()+":"+ c.getCatname()+":"+c.getDel()) ;
			}
    }
    
}

