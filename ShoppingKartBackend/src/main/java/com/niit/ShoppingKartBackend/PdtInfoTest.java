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
		
		ProductInfo user =new ProductInfo();
		user.setPdtid("CAT");
		user.setBrand("Funskool");
		user.setMaterial("Board");
		user.setAgegrp("five");
		user.setPrice("six hundred");
		
		ProductInfoDao.update(user);
		ProductInfoDao.get("C_1");
		p.print();
    }
    public void print()
    {
    	
		List<ProductInfo> a=new ArrayList<ProductInfo>();
		a=ProductInfoDao.list();
		for( ProductInfo  c : a)
			{
			System.out.println( c.getPdtid() + ":" + c.getBrand() +":" +c.getMaterial()+":"+c.getAgegrp()+":"+c.getPrice()) ;
			}
    }
}
