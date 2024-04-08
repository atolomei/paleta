package io.paleta.db;



import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import io.paleta.logging.Logger;
import io.paleta.model.Categoria;


@Service
public class CategoriaDBService extends DBService<Categoria, Long> {
	
	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(CategoriaDBService.class.getName());
	
	 
	 public CategoriaDBService(CrudRepository<Categoria, Long> repository) {
	    super(repository);
	 }
	 
	 
	 
	

}
