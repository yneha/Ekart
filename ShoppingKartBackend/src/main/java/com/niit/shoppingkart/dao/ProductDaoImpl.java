package com.niit.shoppingkart.dao;
import java.math.BigInteger;
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

@Repository("ProductDao")
public class ProductDaoImpl implements ProductDao{


	@Autowired
	private SessionFactory sessionFactory;

	private static final AtomicInteger counter = new AtomicInteger(1);
	public  ProductDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public List<Product>  gets(String catname) {
		Criteria c=sessionFactory.openSession().createCriteria(Product.class);
		c.add(Restrictions.eq("catname", catname));
		
				
		@SuppressWarnings("unchecked")
		List<Product> pdtlist=(List<Product>)c.list();
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
	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listCategory = (List<Product>) sessionFactory.openSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		
		return listCategory;
	}
	@Transactional
	public Product get(String catid) {
		//String hql="from Product where pdtid="+pdtid;
		//Query q=sessionFactory.openSession().createQuery(hql);
		
		Criteria c=sessionFactory.openSession().createCriteria(Product.class);
		c.add(Restrictions.eq("catid", catid));
		
				
		
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
	public void save(Product pdt) {
		Session s= sessionFactory.openSession();
		int a=counter.getAndIncrement();
		System.out.println("Autogeneration"+a);
		String con=Integer.toString(a);
		 pdt.setCatid("CAT_" + con);
		s.saveOrUpdate(pdt);
		s.flush();
		
	}

	@Transactional
	public void delete(String catid) {
		
		String hql = "UPDATE Product set del =:n WHERE catid="+catid;
		
		Query q=sessionFactory.openSession().createQuery(hql);
		q.setParameter("n","t");  
		q.executeUpdate();
		
	}

	@Transactional
	public Product getByName(String catname) {
		String hql = "from Product where catname=" + "'"+ catname +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listCategory = (List<Product>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}
	@Transactional
	public List<Product> showlist() {
		Criteria c=sessionFactory.openSession().createCriteria(Product.class);
		c.add(Restrictions.ne("del","t" ));
		@SuppressWarnings("unchecked")
		List<Product> pdtlist=(List<Product>)c.list();
		return pdtlist;
	}
	public List<Product> retrivelist() {
		Criteria c=sessionFactory.openSession().createCriteria(Product.class);
		c.add(Restrictions.ne("del","f" ));
		@SuppressWarnings("unchecked")
		List<Product> pdtlist=(List<Product>)c.list();
		return pdtlist;
	}
	public void retrive(String catid) {

		String hql = "UPDATE Product set del =:n WHERE catid="+catid;
		
		Query q=sessionFactory.openSession().createQuery(hql);
		q.setParameter("n","f");  
		q.executeUpdate();
		
	}

	

	
	}
