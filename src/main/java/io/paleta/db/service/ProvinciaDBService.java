package io.paleta.db.service;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import io.paleta.logging.Logger;
import io.paleta.model.Categoria;
import io.paleta.model.Localidad;
import io.paleta.model.Provincia;
import io.paleta.model.Usuario;
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
		 Provincia p = new Provincia(name);
		 create(p, createdBy);
	 }
	 
	 			
	 public List<Provincia> getByName(String name) {
			
		 TypedQuery<Provincia> query = createNameQuery();
	     
		 if (!query.getResultList().isEmpty())
	       	return new ArrayList<Provincia>();
	     else
	       	return query.getResultList();
			
		}

	 protected Class getEntityClass() {
		 return Provincia.class;
	 }
	 
}
