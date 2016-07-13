package com.niit.shoppingkart.dao;
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
import com.niit.shoppingkart.bean.Supplier;
import com.niit.shoppingkart.dao.ProductDao;


@Repository("SupplierDao")
public class SupplierDaoImpl implements SupplierDao {



	@Autowired
	private SessionFactory sessionFactory;
	private static final AtomicInteger counter = new AtomicInteger(1);

	public  SupplierDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public Supplier getByName(String s_name) {
		String hql = "from Supplier where s_name=" + "'"+ s_name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listCategory = (List<Supplier>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}
	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listCategory = (List<Supplier>) sessionFactory.openSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;
	}
	@Transactional
	public Supplier get(String s_id) {
		//String hql="from Product where pdtid="+pdtid;
		//Query q=sessionFactory.openSession().createQuery(hql);
		
		Criteria c=sessionFactory.openSession().createCriteria(Supplier.class);
		c.add(Restrictions.eq("s_id", s_id));
		
				
		
		@SuppressWarnings("unchecked")
		List<Supplier> pdtlist=(List<Supplier>)c.list();
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
	public void update(Supplier pdt) {
		int a=counter.getAndIncrement();
		System.out.println("Autogeneration"+a);
		String con=Integer.toString(a);
		 pdt.setS_id("SUP_" + con);
		Session s= sessionFactory.openSession();
		s.saveOrUpdate(pdt);
		s.flush();
		
	}

	@Transactional
	public void delete(String s_id) {
		
String hql = "UPDATE Supplier set del =:n WHERE s_id="+s_id;
		
		Query q=sessionFactory.openSession().createQuery(hql);
		q.setParameter("n","t");  
		q.executeUpdate();
			
		
			
		
	}
	@Transactional
	public List<Supplier> showlist() {
		Criteria c=sessionFactory.openSession().createCriteria(Supplier.class);
		c.add(Restrictions.ne("del","t" ));
		@SuppressWarnings("unchecked")
		List<Supplier> pdtlist=(List<Supplier>)c.list();
		return pdtlist;
	}

	

	

}
