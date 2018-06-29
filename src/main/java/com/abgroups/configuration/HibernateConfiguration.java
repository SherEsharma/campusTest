package com.abgroups.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.hibernate.ejb.HibernatePersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.abgroups.utils.IConstant;

@Configuration
@EnableTransactionManagement
@ComponentScan(IConstant.HIBERNATE_COMPONENT_SCAN)
@PropertySource(IConstant.HIBERNATE_PROPERTY_SOURCE)
@EnableJpaRepositories(IConstant.JPA_REPOSITORY)
public class HibernateConfiguration {

	@Autowired
	private Environment environment;

	@Bean
	public DataSource dataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty(IConstant.DRIVER_CLASS_NAME));
		dataSource.setUrl(environment.getRequiredProperty(IConstant.DB_URL));
		dataSource.setUsername(environment.getRequiredProperty(IConstant.DB_USER));
		dataSource.setPassword(environment.getRequiredProperty(IConstant.DB_PASSWORD));

		return dataSource;
	}
	
	  @Bean
	    public LocalSessionFactoryBean sessionFactory() {
	        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
	        sessionFactory.setDataSource(dataSource());
	        sessionFactory.setPackagesToScan(new String[] { "com.abgroups.model" });
	        sessionFactory.setHibernateProperties(hibernateProperties());
	        return sessionFactory;
	     }

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {

		LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
		entityManagerFactoryBean.setDataSource(dataSource());
		entityManagerFactoryBean.setPersistenceProviderClass(HibernatePersistence.class);
		entityManagerFactoryBean.setPackagesToScan(
				environment.getRequiredProperty(IConstant.PROPERTY_NAME_ENTITYMANAGER_PACKAGES_TO_SCAN));
		entityManagerFactoryBean.setJpaProperties(hibernateProperties());

		return entityManagerFactoryBean;
	}

	private Properties hibernateProperties() {

		Properties properties = new Properties();
		properties.put(IConstant.HIBERNATE_DILECT, environment.getRequiredProperty(IConstant.HIBERNATE_DILECT));
		properties.put(IConstant.HIBERNATE_SHOW_SQL, environment.getRequiredProperty(IConstant.HIBERNATE_SHOW_SQL));
		properties.put(IConstant.HIBERNATE_FORMAT_SQL, environment.getRequiredProperty(IConstant.HIBERNATE_FORMAT_SQL));
		properties.put(IConstant.HIBERNATE_HBM2DDL, environment.getRequiredProperty(IConstant.HIBERNATE_HBM2DDL));

		return properties;
	}

	@Bean
	public JpaTransactionManager transactionManager() {

		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory().getObject());

		return transactionManager;
	}
	
	@Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
       HibernateTransactionManager txManager = new HibernateTransactionManager();
       txManager.setSessionFactory(s);
       return txManager;
    }

}
