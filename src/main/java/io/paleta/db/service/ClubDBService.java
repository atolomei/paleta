package io.paleta.db.service;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import io.paleta.db.model.Categoria;
import io.paleta.db.model.Club;
import io.paleta.db.model.Usuario;
import io.paleta.logging.Logger;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

public class ClubDBService extends DBService<Club, Long> {
			
	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(ClubDBService.class.getName());
	
	 
	 public ClubDBService(CrudRepository<Club, Long> repository, EntityManagerFactory entityManagerFactory) {
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
		 Club c = new Club();
		 c.setName(name);
		 c.setCreated(OffsetDateTime.now());
		 c.setLastModified(OffsetDateTime.now());
		 c.setLastModifidUser(createdBy);
		 getRepository().save(c);
	 }

	 
	 
	 /**
	  * @param name
	  * @return
	  */
	public List<Club> getByName(String name) {
		return createNameQuery().getResultList();
	}
	
	protected Class getEntityClass() {
		 return Club.class;
	}
	 
}
