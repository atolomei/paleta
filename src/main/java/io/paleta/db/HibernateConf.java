package io.paleta.db;


import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import io.paleta.PaletaApplication;

// import jakarta.persistence.EntityManagerFactory;

/**
 * 
 * 
 */
@Configuration
@EnableTransactionManagement
public class HibernateConf {

	
	@Autowired
	private final SettingsService settigsService;
	
	
	public HibernateConf(SettingsService settigsService) {
		this.settigsService= settigsService;
	}
	
	
	
	
	@Bean(name="entityManagerFactory")
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(PaletaApplication.hibernateConfPackages);
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    }

    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();

        String s=settigsService.getDriverClassName();
        
        dataSource.setDriverClassName(PaletaApplication.driverClassName);
        dataSource.setUrl(PaletaApplication.url);
        dataSource.setUsername(PaletaApplication.userName);
        dataSource.setPassword(PaletaApplication.password);
        return dataSource;
    }
    
    @Bean(name = "transactionManager")
    public PlatformTransactionManager hibernateTransactionManager() {
        HibernateTransactionManager transactionManager
          = new HibernateTransactionManager();
        transactionManager.setSessionFactory(sessionFactory().getObject());
        return transactionManager;
    }

    private final Properties hibernateProperties() {
        Properties hibernateProperties = new Properties();
        hibernateProperties.setProperty("hibernate.ddl-auto", "none");
        //hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
        return hibernateProperties;
    }

}
