package com.niit.ShoppingKartBackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingkart.bean.User;
import com.niit.shoppingkart.dao.UserDAO;

public class Usertest
	{
		static AnnotationConfigApplicationContext context;
		static UserDAO userdao;
		
	    @SuppressWarnings("unchecked")
		public static void main( String[] args )
	    {
	  	
			context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.shoppingkart");
			
			context.refresh();
			
			userdao =  (UserDAO) context.getBean("Userdao");
			
			
			List<User> a=new ArrayList<User>();
			a=userdao.list();
			for( User c : a)
				{
					System.out.println( c.getId()+":"+c.getName()+":"+c.getPassword()+":"+c.getAddr()+":"+c.getPhno()+":"+c.getEmail()) ;
				}
	    }
	 
	}




		
		
		

		
			
			
			
			
		

