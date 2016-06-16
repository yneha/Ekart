package com.niit.shoppingkart.dao;

import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	public boolean isValid(String userid,String password)
	{
		if(userid.equals("neha")&& password.equals("neha@123"))
		{
			return true;
		}
		else 
			return false;
	}

	}


