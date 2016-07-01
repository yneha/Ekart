package com.niit.ShoppingKartBackend;


import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingkart.bean.ProductInfo;
import com.niit.shoppingkart.bean.Supplier;
import com.niit.shoppingkart.dao.SupplierDao;

public class SupplierTest{
	
	static SupplierDao supdao;
    @SuppressWarnings("unchecked")
	public static void main( String[] args )
    {
  		 
    	AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingkart");
		
		context.refresh();
		
		 supdao=  (SupplierDao) context.getBean("SupplierDao");
		
		
		SupplierTest p=new SupplierTest();
		
		Supplier s=new Supplier();
		
		s.setS_name("Monopoly for children");
		s.setS_stock(5);
		s.setS_addr("Monopoly");
		s.setS_tot_val(560);
		supdao.update(s);
		
		
		p.print();
    }
    public void print()
    {
    	
		List<Supplier> a=new ArrayList<Supplier>();
		a=supdao.list();
		for( Supplier  c : a)
			{
			System.out.println( c.getS_id() + ":" + c.getS_addr() +":"+c.getS_name()+":" +c.getS_stock()+":"+c.getS_tot_val()) ;
			}
    }
}
