package io.paleta.db.service;


import java.util.Optional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import io.paleta.model.Usuario;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.FlushModeType;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.ParameterExpression;
import jakarta.persistence.criteria.Root;
import jakarta.transaction.Transactional;

@Service
public class USuarioDBService extends DBService<Usuario, Long> {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	
	public USuarioDBService(CrudRepository<Usuario, Long> repository, EntityManagerFactory entityManagerFactory) {
		super(repository, entityManagerFactory);
	}
	

	 protected Class getEntityClass() {
		 return Usuario.class;
	 }
	 
	    
    @Transactional
	public Optional<Usuario> getRoot() {
		
	    CriteriaBuilder criteriabuilder = getSessionFactory().getCurrentSession().getCriteriaBuilder();
		
        CriteriaQuery<Usuario> criteria = criteriabuilder.createQuery(Usuario.class);
        Root<Usuario> loaders = criteria.from(Usuario.class);
        ParameterExpression<String> nameparameter = criteriabuilder.parameter(String.class);
        criteria.select(loaders).where(criteriabuilder.equal(loaders.get("username"), nameparameter));
        
		TypedQuery<Usuario> query = sessionFactory.getCurrentSession().createQuery(criteria);
        query.setHint("org.hibernate.cacheable", true);
        query.setFlushMode(FlushModeType.COMMIT);
        query.setParameter(nameparameter, "root");
		
         if (!query.getResultList().isEmpty())
        	return Optional.of(query.getSingleResult());
        else
        	return Optional.empty();
	}

}
