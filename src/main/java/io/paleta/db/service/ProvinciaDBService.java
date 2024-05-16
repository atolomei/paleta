package io.paleta.db.service;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import io.paleta.db.model.Categoria;
import io.paleta.db.model.Localidad;
import io.paleta.db.model.Provincia;
import io.paleta.db.model.Usuario;
import io.paleta.logging.Logger;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

public class ProvinciaDBService extends DBService<Provincia, Long> {
				
	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(CategoriaDBService.class.getName());
	
	 
	 public ProvinciaDBService(CrudRepository<Provincia, Long> repository, EntityManagerFactory entityManagerFactory) {
	    super(repository,  entityManagerFactory);
	 }
	 
	 
	 /**
	  * <p>Annotation {@code Transactional} is required to store values into the Database</p>
	  * 
	  * @param name
	  * @param createdBy
	  */
	 @Transactional
	 public void create(Provincia provincia, Usuario createdBy) {
		 provincia.setCreated(OffsetDateTime.now());
		 provincia.setLastModified(OffsetDateTime.now());
		 provincia.setLastModifidUser(createdBy);
		 getRepository().save(provincia);
	 }
	 
	 
	 @Transactional
	 public void create(String name, Usuario createdBy) {
		 create(new Provincia(name), createdBy);
	 }
	 
	 			
	 public List<Provincia> getByName(String name) {
		 return createNameQuery().getResultList();			
	 }

	 protected Class getEntityClass() {
		 return Provincia.class;
	 }
	 
}
