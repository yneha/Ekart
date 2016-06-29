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
		public Usertest()
		{
			 userdao =  (UserDAO) context.getBean("Userdao");
		}
	    @SuppressWarnings("unchecked")
		public static void main( String[] args )
	    {
	  	
			context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.shoppingkart");
			
			context.refresh();
			
			Usertest u=new Usertest();
			
			
			User user =new User();
			user.setEmail("NIIT");
			user.setPassword("NIIT");
			user.setId( 5);
			
		
			
			userdao.saveOrUpdate(user);
			
			
			List<User> a=new ArrayList<User>();
			a=userdao.list();
			for( User c : a)
				{
					System.out.println( c.getEmail() + ":" + c.getId() +":" +c.getPassword()) ;
				}
	    }
	 
	}




		
		
		

		
			
			
			
			
		

