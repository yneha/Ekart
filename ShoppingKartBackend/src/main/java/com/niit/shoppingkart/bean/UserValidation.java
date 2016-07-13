package com.niit.shoppingkart.bean;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidation implements Validator {


		
	
	public void validate(Object target, Errors errors) {
		System.out.println("welcome to validation");
			
		ValidationUtils.rejectIfEmpty(errors, "email", "error.email", "Email is required.");
		ValidationUtils.rejectIfEmpty(errors, "name", "error.name", "Name cannot be empty");
		ValidationUtils.rejectIfEmpty(errors, "phno", "error.phno", "Name cannot be empty");
		ValidationUtils.rejectIfEmpty(errors, "password", "error.password", "Name cannot be empty");
			
		}
public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.isAssignableFrom(clazz);
	}
	}

	
		
	

