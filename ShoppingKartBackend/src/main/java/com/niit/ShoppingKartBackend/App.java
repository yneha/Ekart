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

		Product p=new Product();
		p.setCatname("ghi");p.setStock(120);
		p.setTot_val(14000);
		pdtdao.save(p);
      
			app.print();
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

