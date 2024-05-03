package io.paleta.controller;

import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonIgnore;

import io.paleta.db.CategoriaDBService;
import io.paleta.db.CategoriaRepository;
import io.paleta.logging.Logger;
import io.paleta.model.Categoria;

/**
 * 
 * 
 * <p>
 *  CRUD
 *  
 *  list
 *   get
 *  
 * </p>
 */
@RestController
@RequestMapping(value = "/categoria")
public class CategoriaController {
		
	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(CategoriaController.class.getName());
	
	  @JsonIgnore	
	  private final CategoriaDBService db;
	  
	  
	  public CategoriaController(CategoriaDBService db) {
	    this.db = db;
	  }
	  
	  @GetMapping("/list")
	  public Iterable<Categoria> findAllCategorias() {
		  return this.getDB().getRepository().findAll();
	  }

	  @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
	  public Optional<Categoria> get(@PathVariable("id") Long id) {
		  return this.getDB().getRepository().findById(id.longValue()); 
	  }
	  
	  @PostMapping("/save")
	  public Categoria save(@RequestBody Categoria categoria) {
	    return this.getDB().getRepository().save(categoria);
	  }

	  @PostMapping("/create")
	  public void create() {
		  logger.debug("here");
		
	  }

	  
	  @RequestMapping(value = "/exists/{id}", method = RequestMethod.GET)
	  public Boolean exists(@PathVariable("id") Long id) {
		  return this.getDB().getRepository().existsById(id); 
	  }

	  @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	  public void delete(@PathVariable("id") Long id) {
		  this.getDB().getRepository().deleteById(id);
	  }
	  
	  
	  
	  public CategoriaDBService getDB() {
		  return db;
	  }

}
