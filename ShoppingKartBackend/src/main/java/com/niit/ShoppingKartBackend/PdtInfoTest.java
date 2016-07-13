package com.niit.ShoppingKartBackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.ProductInfo;
import com.niit.shoppingkart.dao.ProductInfoDao;

public class PdtInfoTest {
	
	static ProductInfoDao ProductInfoDao;
    @SuppressWarnings("unchecked")
	public static void main( String[] args )
    {
  		 
    	AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingkart");
		
		context.refresh();
		
		 ProductInfoDao =  (ProductInfoDao) context.getBean("ProductInfoDao");
		
		
		PdtInfoTest p=new PdtInfoTest();
		ProductInfo pi=new ProductInfo();
		pi.setName("a");
		pi.setAgegrp(5);
		pi.setBrand("cb");
		pi.setCat_id("CAT_1");
		pi.setMaterial("fgh");pi.setPrice(120);
		pi.setSup_id("SUP_1");
		
	ProductInfoDao.update(pi);
	pi.setName("a");
	pi.setAgegrp(5);
	pi.setBrand("cb");
	pi.setCat_id("CAT_1");
	pi.setMaterial("fgh");pi.setPrice(120);
	pi.setSup_id("SUP_1");
	ProductInfoDao.update(pi);
		p.print();
		
		
			
		
		
    }
    public void print()
    {
    	
		List<ProductInfo> a=new ArrayList<ProductInfo>();
		a=ProductInfoDao.showlist();
		for( ProductInfo  c : a)
			{
			System.out.println( c.getPdtid() + ":" + c.getBrand() +":"+c.getName()+":" +c.getMaterial()+":"+c.getAgegrp()+":"+c.getPrice()) ;
			}
    }
}
