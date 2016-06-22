package com.niit.ShoppingKartBackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.dao.ProductDao;


public class App 
{
	static AnnotationConfigApplicationContext context;
	
    public static void main( String[] args )
    {
  	
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingkart");
		context.refresh();
		ProductDao  pdt =  (ProductDao) context.getBean("ProductDao");
		List<Product> a=new ArrayList<Product>();
		a=pdt.list();
		{
			for( Product c : a)
			{
				System.out.println(c.getPdtid() + ":"+ c.getPdtname() +":"+  c.getPdtdes()) ;
			}
		}
   
    
	
		
		
    }}

