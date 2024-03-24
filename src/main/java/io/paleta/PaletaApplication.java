package io.paleta;


import io.paleta.logging.Logger;
import io.paleta.model.Club;
import jakarta.annotation.PostConstruct;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

@SpringBootApplication
@ComponentScan({"io.paleta"})
public class PaletaApplication {

	static private Logger std_logger = Logger.getLogger("StartupLogger");
	
	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(PaletaApplication.class.getName());

	static public String[] cmdArgs = null;
	
	public static void main(String[] args) {

		SpringApplication application = new SpringApplication(PaletaApplication.class);
		application.setBannerMode(Banner.Mode.OFF);
		cmdArgs = args;
		application.run(args);
		
	}
	
	public PaletaApplication() {
	}
	
	@PostConstruct
	public void onInitialize() {
		
		std_logger.info("");
		for (String s : PaletaVersion.getAppCharacterName())
			std_logger.info(s);
		
		std_logger.info(ServerConstant.SEPARATOR);
		
		std_logger.info("");
		std_logger.info("This software is licensed under the Apache License, Version 2.0");
		std_logger.info("http://www.apache.org/licenses/LICENSE-2.0");

		initShutdownMessage();
	}
	
	

	/**
	 *
	 * 
	 */
	
	private void initShutdownMessage() {
	    Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
            	std_logger.info("");
            	std_logger.info("As the roman legionaries used to say when falling in battle");
            	std_logger.info("'Dulce et decorum est pro patria mori'...Shuting down... goodbye.");
            	std_logger.info("");
            }
        });
	}

	
}
