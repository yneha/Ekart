package com.niit.ShoppingKartBackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.dao.ProductDao;


public class App 
{
	static AnnotationConfigApplicationContext context;
	static ProductDao  pdtdao;
	public App()
	{
		 pdtdao =  (ProductDao) context.getBean("ProductDao");
	}
    @SuppressWarnings("unchecked")
	public static void main( String[] args )
    {
  	
		context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingkart");
		
		context.refresh();
		
		App app= new App();


       
		Product pdt=new Product();
	
		app.print();
		
		
	
		
		
    }

    public void print()
    {
    	
		List<Product> a=new ArrayList<Product>();
		a=pdtdao.list();
		for( Product c : a)
			{
				System.out.println(c.getCatid() +":"+c.getStock()+":"+ c.getTot_val()+":"+ c.getCatname()) ;
			}
    }
    
}

