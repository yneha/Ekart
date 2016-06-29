package com.niit.shoppingkart.bean;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


	
	
	@Entity

	public class ProductInfo {

		@Id
		
	    @Basic(optional = false)
	    @Column(name = "pdtid",unique=true, nullable = false)
		private String pdtid;
		public String getPdtid() {
			return pdtid;
		}
		public void setPdtid(String pdtid) {
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
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getAgegrp() {
			return agegrp;
		}
		public void setAgegrp(String agegrp) {
			this.agegrp = agegrp;
		}
		private String brand;
		private String material;
		private String price;
		private String agegrp;


}
