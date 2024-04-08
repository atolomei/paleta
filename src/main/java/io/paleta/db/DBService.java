package io.paleta.db;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import io.paleta.logging.Logger;



public class DBService<T,I> implements SystemService {
			
	@JsonIgnore
	static final private ObjectMapper mapper = new ObjectMapper();
	
	static private Logger logger = Logger.getLogger(DBService.class.getName());
	
	
	static {
		mapper.registerModule(new JavaTimeModule());
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);	
	}
	
	
	@JsonIgnore
	@Autowired
	private final CrudRepository<T,I> repository;
	
	
	public  DBService(CrudRepository<T,I> repository) {
		this.repository=repository;
	}


	public CrudRepository<T,I> getRepository() {
		return  repository;
	}
	
	@Override
	public String toString() {
		StringBuilder str = new StringBuilder();
		str.append(this.getClass().getSimpleName());
		str.append(toJSON());
		return str.toString();
	}

	
	@Override
	public String toJSON() {
	   try {
			return mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
					logger.error(e);
					return "\"error\":\"" + e.getClass().getName()+ " | " + e.getMessage()+"\""; 
		}
	  }
  
	protected ObjectMapper getObjectMapper() {
		return mapper;
	}
	

}
