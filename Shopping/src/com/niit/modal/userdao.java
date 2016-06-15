package com.niit.modal;

public class userdao {
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
