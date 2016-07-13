package com.niit.shoppingkart.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.hibernate.Criteria;
import org.hibernate.Query;
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

	private static final AtomicInteger counter = new AtomicInteger(1);
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

	public ProductInfo get(String pdtid) {
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
		int a=counter.getAndIncrement();
		System.out.println("Autogeneration"+a);
		String con=Integer.toString(a);
		 pdt.setPdtid("PDT_" + con);
		Session s= sessionFactory.openSession();
		s.saveOrUpdate(pdt);
		s.flush();
		
		
	}
	@Transactional
	public void delete(String pdtid) {
		
			
String hql = "UPDATE ProductInfo set del =:n WHERE pdtid="+pdtid;
		
		Query q=sessionFactory.openSession().createQuery(hql);
		q.setParameter("n","t");  
		q.executeUpdate();
			
		
	}

	public List<ProductInfo>  gets(String name) {
		Criteria c=sessionFactory.openSession().createCriteria(ProductInfo.class);
		c.add(Restrictions.eq("name", name));
		
			
		
		@SuppressWarnings("unchecked")
		List<ProductInfo> pdtlist=(List<ProductInfo>)c.list();
		System.out.println(pdtlist);
		if(pdtlist!= null && !pdtlist.isEmpty())
		{
			return pdtlist;
		
		}
		else
		{
		return null;
		}
}

	public List<ProductInfo> showlist() {
		Criteria c=sessionFactory.openSession().createCriteria(ProductInfo.class);
		c.add(Restrictions.ne("del","t" ));
		@SuppressWarnings("unchecked")
		List<ProductInfo> pdtlist=(List<ProductInfo>)c.list();
	
		return pdtlist;
	}

}
