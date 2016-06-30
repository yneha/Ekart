package com.niit.shoppingkart.bean;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity

public class Product {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int catid;
   
	public int getPdtid() {
		return catid;
	}
	public void setPdtid(int pdtid) {
		this.catid = pdtid;
	}
	private String catname;

	
	
	private int stock;
	
	private int tot_val;
	
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getTot_val() {
		return tot_val;
	}
	public void setTot_val(int tot_val) {
		this.tot_val = tot_val;
	}
	
	
}
