package io.paleta.db;

import java.time.OffsetDateTime;

import org.springframework.data.repository.CrudRepository;

import io.paleta.logging.Logger;
import io.paleta.model.Localidad;
import io.paleta.model.Usuario;
import jakarta.persistence.EntityManagerFactory;
import jakarta.transaction.Transactional;

public class LocalidadDBService extends DBService<Localidad, Long> {

	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(LocalidadDBService.class.getName());
	
	 
	 public LocalidadDBService(CrudRepository<Localidad, Long> repository, EntityManagerFactory entityManagerFactory) {
	    super(repository,  entityManagerFactory);
	 }
	 
	 /**
	  * <p>Annotation Transactional is required to store values into the Database</p>
	  * 
	  * @param name
	  * @param createdBy
	  */
	 @Transactional
	 public void create(String name, Usuario createdBy) {
		 Localidad c = new Localidad();
		 c.setNombre(name);
		 c.setCreated(OffsetDateTime.now());
		 c.setLastModified(OffsetDateTime.now());
		 c.setLastModifidUser(createdBy);
		 getRepository().save(c);
	 }

}
