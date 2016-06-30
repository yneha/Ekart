package com.niit.shoppingkart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.ProductInfo;



@Repository("ProductInfoDao")
public class ProductInfoDaoImpl implements ProductInfoDao{
	@Autowired
	private SessionFactory sessionFactory;


	public  ProductInfoDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<ProductInfo> list() {
		System.out.println("welcome in pdti");
		@SuppressWarnings("unchecked")
		List<ProductInfo> listCategory = (List<ProductInfo>) sessionFactory.openSession()
				.createCriteria(ProductInfo.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		System.out.println(listCategory);
		return listCategory;
		
	}

	public ProductInfo get(int pdtid) {
		Criteria c=sessionFactory.openSession().createCriteria(ProductInfo.class);
		c.add(Restrictions.eq("pdtid", pdtid));
		
				
		
		@SuppressWarnings("unchecked")
		List<ProductInfo> pdtlist=(List<ProductInfo>)c.list();
		if(pdtlist!= null && !pdtlist.isEmpty())
		{
			return pdtlist.get(0);
		}
		else
		{
		return null;
		}
	}

	public void update(ProductInfo pdt) {
		Session s= sessionFactory.openSession();
		s.saveOrUpdate(pdt);
		s.flush();
		
	}
	@Transactional
	public void delete(int pdtid) {
		
			
		Product pdtdelete=new Product();
		pdtdelete.setPdtid(pdtid);
		sessionFactory.getCurrentSession().delete(pdtdelete);
			
		
	}

}
