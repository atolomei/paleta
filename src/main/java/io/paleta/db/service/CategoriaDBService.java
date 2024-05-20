package io.paleta.db.service;



import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import io.paleta.db.model.Categoria;
import io.paleta.db.model.Usuario;
import io.paleta.logging.Logger;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.FlushModeType;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.ParameterExpression;
import jakarta.persistence.criteria.Root;
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
	

	 /**
	  * @param name
	  * @return
	  */
	public List<Categoria> getByName(String name) {
		return createNameQuery().getResultList();
	}
	
	@Override
	protected Class<?> getEntityClass() {
		return Categoria.class;
	}

	 
}
