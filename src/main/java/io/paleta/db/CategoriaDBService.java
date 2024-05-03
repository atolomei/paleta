package io.paleta.db;



import java.time.OffsetDateTime;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import io.paleta.logging.Logger;
import io.paleta.model.Categoria;
import io.paleta.model.Usuario;
import jakarta.persistence.EntityManagerFactory;
import jakarta.transaction.Transactional;


@Service
public class CategoriaDBService extends DBService<Categoria, Long> {
	
	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(CategoriaDBService.class.getName());
	
	 
	 public CategoriaDBService(CrudRepository<Categoria, Long> repository, EntityManagerFactory entityManagerFactory) {
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
		 Categoria c = new Categoria();
		 c.setNombre(name);
		 c.setCreated(OffsetDateTime.now());
		 c.setLastModified(OffsetDateTime.now());
		 c.setLastModifidUser(createdBy);
		 getRepository().save(c);
	 }
	

}
