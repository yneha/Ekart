package com.niit.shoppingkart.bean;


	import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

	@Entity
	
	
	public class User{

		
		private String email;
		 @Id
		 @GeneratedValue(strategy=GenerationType.AUTO)  		   
		private int id;
		public int getId() 
		{
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		private String password;
	
		
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
	
		private String name;
		private String addr;
	
		private int phno;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getAddr() {
			return addr;
		}
		public void setAddr(String addr) {
			this.addr = addr;
		}
		public int getPhno() {
			return phno;
		}
		public void setPhno(int phno) {
			this.phno = phno;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
	}



