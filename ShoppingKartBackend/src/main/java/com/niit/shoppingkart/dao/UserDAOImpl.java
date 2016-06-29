package com.niit.shoppingkart.dao;



	import java.util.List;

	import org.hibernate.Criteria;
	import org.hibernate.Query;
	import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.Transactional;

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
		public void delete(String email) {
			User user = new User();
			user.setEmail(email);
			sessionFactory.getCurrentSession().delete(user);
		}

		
		
		@Transactional
		public void saveOrUpdate(User user) {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		}

		public User get(String id) {
			// TODO Auto-generated method stub
			return null;
		}
		
			
		


	}


