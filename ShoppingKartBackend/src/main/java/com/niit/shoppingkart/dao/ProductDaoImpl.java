package com.niit.shoppingkart.dao;

import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingkart.bean.Product;

@Repository("ProductDao")
public class ProductDaoImpl implements ProductDao{


	@Autowired
	private SessionFactory sessionFactory;


	public  ProductDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listCategory = (List<Product>) sessionFactory.openSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;
	}

	public Product get(String pdtid) {
		//String hql="from Product where pdtid="+pdtid;
		//Query q=sessionFactory.openSession().createQuery(hql);
		
		Criteria c=sessionFactory.openSession().createCriteria(Product.class);
		c.add(Restrictions.eq("pdtid", pdtid));
		
				
		
		@SuppressWarnings("unchecked")
		List<Product> pdtlist=(List<Product>)c.list();
		if(pdtlist!= null && !pdtlist.isEmpty())
		{
			return pdtlist.get(0);
		}
		else
		{
		return null;
		}
	}

	
	
	@Transactional
	public void update(Product pdt) {
		Session s= sessionFactory.openSession();
		s.saveOrUpdate(pdt);
		s.flush();
		
	}

	@Transactional
	public void delete(String pdtid) {
		
			
		Product pdtdelete=new Product();
		pdtdelete.setPdtid(pdtid);
		sessionFactory.getCurrentSession().delete(pdtdelete);
			
		
	}
	}
