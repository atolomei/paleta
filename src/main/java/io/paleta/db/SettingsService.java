package io.paleta.db;

import java.time.OffsetDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;

import io.paleta.db.model.SystemService;
import io.paleta.logging.Logger;
import io.paleta.service.BaseService;



@Configuration
//@PropertySource("application.properties")
@Service
public class SettingsService extends BaseService implements SystemService {
			
	static private Logger logger = Logger.getLogger(SettingsService.class.getName());
	static private Logger startuplogger = Logger.getLogger("StartupLogger");

	private static final OffsetDateTime systemStarted = OffsetDateTime.now();
	
	/* default -> paleta */
	@Value("${app.name:paleta}")
	@NonNull
	protected String appName;

	
	@Autowired
	public SettingsService() {
	}
	

			//
			// server.port=8092
			//
			// jakarta.persistence.jdbc.url==jdbc:postgresql://localhost:5432/paleta
			// spring.datasource.url=jdbc:postgresql://localhost:5432/paleta
			// spring.datasource.username=postgres
			// spring.datasource.password=novamens
			//
	
	public OffsetDateTime getSystemStartTime() {
		return systemStarted;
	}
	
	
	public String getAppName() {
		return appName;
	}
	
	String driverClassName = "org.postgresql.Driver";
			
	public String getDriverClassName() {
		return driverClassName;
	}
	
	
	String dburl = "jdbc:postgresql://localhost:5432/paleta";
	public String getDBUrl() {
		return dburl;
	}
	
	String dbuserName = "postgres";
	public String getDBUserName() {
		return dbuserName;
	}
	
	String password = "novamens";
	public String getDBPassword() {
		return password;
	}
	 
	
	
	
	
	
	
}
