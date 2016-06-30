package com.niit.shoppingkart.dao;


	import java.util.List;

import com.niit.shoppingkart.bean.User;

	



	public interface UserDAO {


		public List<User> list();

		public User get(String name);

		public void saveOrUpdate(User user);
		
		
		public void delete(String name);
		
		


	}


