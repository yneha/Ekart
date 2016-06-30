package com.niit.shoppingkart.dao;



	import java.util.List;

	import org.hibernate.Criteria;
	import org.hibernate.Query;
	import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.User;

	

	@Repository("Userdao")
	public class UserDAOImpl implements UserDAO {
		

		@Autowired
		private SessionFactory sessionFactory;


		public UserDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

		@Transactional
		public List<User> list() {
			@SuppressWarnings("unchecked")
			List<User> list = (List<User>) sessionFactory.openSession()
					.createCriteria(User.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

			return list;
		}

		
		

		@Transactional
		public void delete(String name) {
			User user = new User();
			user.setName(name);;
			sessionFactory.getCurrentSession().delete(user);
		}

		
		
		@Transactional
		public void saveOrUpdate(User user) {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		}

		public User get(String name) {

			Criteria c=sessionFactory.openSession().createCriteria(User.class);
			c.add(Restrictions.eq("name", name));
			
					
			
			@SuppressWarnings("unchecked")
			List<User> pdtlist=(List<User>)c.list();
			if(pdtlist!= null && !pdtlist.isEmpty())
			{
				return pdtlist.get(0);
			}
			else
			{
			return null;
			}
		}
		
			
		


	}


