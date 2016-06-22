package com.niit.shoppingkart.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity

public class Product implements Serializable{

	@Id
	private String pdtid;
	private String pdtname;
	private String pdtdes;
	
		public String getPdtid() {
		return pdtid;
	}
	public void setPdtid(String pdtid) {
		this.pdtid = pdtid;
	}
	public String getPdtname() {
		return pdtname;
	}
	public void setPdtname(String pdtname) {
		this.pdtname = pdtname;
	}
	public String getPdtdes() {
		return pdtdes;
	}
	public void setPdtdes(String pdtdes) {
		this.pdtdes = pdtdes;
	}
	
}
