package com.niit.shoppingkart.dao;

import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
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
		// TODO Auto-generated method stub
		return null;
	}

	public void update(Product pdt) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	


}
