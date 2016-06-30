package com.niit.shoppingkart.bean;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


	
	
	@Entity

	public class ProductInfo {

		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
	    @Basic(optional = false)
	    @Column(name = "pdtid",unique=true, nullable = false)
		private int pdtid;
		private String name;
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getPdtid() {
			return pdtid;
		}
		public void setPdtid(int pdtid) {
			this.pdtid = pdtid;
		}
		public String getBrand() {
			return brand;
		}
		public void setBrand(String brand) {
			this.brand = brand;
		}
		public String getMaterial() {
			return material;
		}
		public void setMaterial(String material) {
			this.material = material;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public int getAgegrp() {
			return agegrp;
		}
		public void setAgegrp(int agegrp) {
			this.agegrp = agegrp;
		}
		private String brand;
		private String material;
		private int price;
		private int agegrp;


}
