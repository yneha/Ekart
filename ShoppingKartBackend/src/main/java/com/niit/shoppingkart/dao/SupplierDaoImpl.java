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
import com.niit.shoppingkart.bean.Supplier;
import com.niit.shoppingkart.dao.ProductDao;


@Repository("SupplierDao")
public class SupplierDaoImpl implements SupplierDao {



	@Autowired
	private SessionFactory sessionFactory;


	public  SupplierDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listCategory = (List<Supplier>) sessionFactory.openSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;
	}

	public Supplier get(int s_id) {
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
		Session s= sessionFactory.openSession();
		s.saveOrUpdate(pdt);
		s.flush();
		
	}

	@Transactional
	public void delete(int s_id) {
		
			
		Supplier pdtdelete=new Supplier();
		pdtdelete.setS_id(s_id);
		sessionFactory.getCurrentSession().delete(pdtdelete);
			
		
	}

	

	

}
