package io.paleta.db;

import java.util.Optional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.repository.CrudRepository;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import io.paleta.logging.Logger;
import jakarta.persistence.EntityManagerFactory;



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
	
	@JsonIgnore
	@Autowired
	EntityManagerFactory entityManagerFactory;

	
	
	//@Bean
	//public SessionFactory getSessionFactory() {
	//   if (entityManagerFactory.unwrap(SessionFactory.class) == null) {
	//      throw new NullPointerException("factory is not a hibernate factory");
	//    }
	//   return entityManagerFactory.unwrap(SessionFactory.class);
	//}
	
	public  DBService(CrudRepository<T,I> repository, EntityManagerFactory entityManagerFactory) {
		this.repository=repository;
		this.entityManagerFactory=entityManagerFactory;
	}


	public  <S extends T> S save(S entity) {
		return getRepository().save(entity); 
	}
	
	public  <S extends T> Iterable<S> saveAll(Iterable<S> entities) {
		return getRepository().saveAll(entities);
	}

	
	public  Optional<T> findById(I id) {
		return getRepository().findById(id);
	}
	
	
	public 	boolean existsById(I id) {
		return getRepository().existsById(id);
	}
	
	
	public  Iterable<T> findAll() {
		return getRepository().findAll();
	}
	
	public Iterable<T> findAllById(Iterable<I> ids) {
		return getRepository().findAllById(ids);
	}
	
	public 	long count() {
		return getRepository().count();
		
	}
	
	public  void deleteById(I id) {
		getRepository().deleteById(id);
	}
	
	
	public 	void delete(T entity) {
		getRepository().delete(entity);
	}
	
	
	public 	void deleteAllById(Iterable<? extends I> ids) {
		getRepository().deleteAllById(ids);
	}
	
	public 	void deleteAll(Iterable<? extends T> entities) {
		getRepository().deleteAll(entities);
	}
	
	public  void deleteAll() {
		getRepository().deleteAll();
	};
	
	
	
	
	
	
	
	
	
	
	
	
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
