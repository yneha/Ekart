package com.niit.shoppingkart.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.ProductInfo;
import com.niit.shoppingkart.bean.Supplier;
import com.niit.shoppingkart.bean.User;
import com.niit.shoppingkart.dao.ProductDao;
import com.niit.shoppingkart.dao.ProductDaoImpl;
import com.niit.shoppingkart.dao.ProductInfoDao;
import com.niit.shoppingkart.dao.ProductInfoDaoImpl;
import com.niit.shoppingkart.dao.SupplierDao;
import com.niit.shoppingkart.dao.SupplierDaoImpl;
import com.niit.shoppingkart.dao.UserDAO;
import com.niit.shoppingkart.dao.UserDAOImpl;

@Configuration
@ComponentScan("com.niit.shoppingkart.bean")
@EnableTransactionManagement

public class ApplicationContextConfig
{
	
	@Bean(name="dataSource")
	public DataSource getdataSource()
			{
		
			BasicDataSource datasource=new BasicDataSource();
			datasource.setDriverClassName("org.h2.Driver");
			datasource.setUrl("jdbc:h2:tcp://localhost/~/test");
			datasource.setUsername("sa");
			datasource.setPassword("");
		    return datasource;
				
			}
	private Properties getHibernateProperties()
	{
		Properties properties=new Properties();
		properties.put("hibernate.show_sql","true");
		properties.put("hibernate.hbm2ddl.auto","update");
		properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		return properties;
		
		}
	
	@Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
	
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClasses(Product.class);
    	sessionBuilder.addAnnotatedClasses(User.class);
    	sessionBuilder.addAnnotatedClasses(Supplier.class);
    	sessionBuilder.addAnnotatedClasses(ProductInfo.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
	@Autowired
	@Bean(name="Userdao")
	public UserDAO getUserDAO(SessionFactory sessionFactory) {
    	return new UserDAOImpl(sessionFactory);
    }
	
    @Autowired
    @Bean(name = "ProductDao")
    public ProductDao getProductDao(SessionFactory sessionFactory) {
    	return new ProductDaoImpl(sessionFactory);
    }
    @Autowired
    @Bean(name = "ProductInfoDao")
    public ProductInfoDao getProductInfoDao(SessionFactory sessionFactory) {
    	return new ProductInfoDaoImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "SupplierDao")
    public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
    	return new SupplierDaoImpl(sessionFactory);
    } 
	}