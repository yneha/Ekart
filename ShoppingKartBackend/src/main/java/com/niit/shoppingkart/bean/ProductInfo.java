package com.niit.shoppingkart.bean;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
<<<<<<< HEAD
import javax.persistence.OneToMany;
import javax.validation.constraints.Min;

=======
>>>>>>> 7567ab24600c129060ee33bbdf09936f85eb8bdc


	
	@Entity

	public class ProductInfo {
<<<<<<< HEAD
		
=======
	
>>>>>>> 7567ab24600c129060ee33bbdf09936f85eb8bdc
		@Id
		
	    @Basic(optional = false)
	    @Column(name = "pdtid",unique=true, nullable = false)
		private String pdtid;
		private String name;
		

		private String del="f";
		
		private String cat_id;
		private String sup_id;
		@ManyToOne
		  @JoinColumn(name="cat_id", nullable = false, updatable = false, insertable = false)
		private Product category;
				
				
		@ManyToOne
		  @JoinColumn(name="sup_id", nullable = false, updatable = false, insertable = false)
		private Supplier supplier;

		
		public String getCat_id() {
			return cat_id;
		}
		public void setCat_id(String cat_id) {
			this.cat_id =cat_id;
		}
		public String getSup_id() {
			return sup_id;
		}
		public void setSup_id(String sup_id) {
			this.sup_id = sup_id;
		}
		public Product getCategory() {
			return category;
		}
		public void setCategory(Product category) {
			this.category = category;
		}
		public Supplier getSupplier() {
			return supplier;
		}
		public void setSupplier(Supplier supplier) {
			this.supplier = supplier;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPdtid() {
			
			return pdtid;
			
		}
		
		public void setPdtid(String pdtid) {
			
			  this.pdtid=pdtid;
				
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
		public String getDel() {
			return del;
		}
		public void setDel(String del) {
			this.del = del;
		}
		private String brand;
		private String material;
		
		private int price;
		private int agegrp;


}
