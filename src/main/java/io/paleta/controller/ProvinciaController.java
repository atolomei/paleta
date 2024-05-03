package io.paleta.controller;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.paleta.db.ProvinciaRepository;
import io.paleta.logging.Logger;
import io.paleta.model.Provincia;

@RestController
@RequestMapping(value = "/provincia")
public class ProvinciaController {

	@SuppressWarnings("unused")
	static private Logger logger = Logger.getLogger(ProvinciaController .class.getName());
	
	  private final ProvinciaRepository provinciaRepository;

	  public ProvinciaController(ProvinciaRepository provinciaRepository) {
	    this.provinciaRepository = provinciaRepository;
	  }
	  
	  @GetMapping("/list")
	  public Iterable<Provincia> findAllProvincia() {
		  return this.getRepository().findAll();
	  }

	  @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
	  public Optional<Provincia> get(@PathVariable("id") Long id) {
		  return this.getRepository().findById(id.longValue()); 
	  }
	  
	  @PostMapping("/save")
	  public Provincia save(@RequestBody Provincia provincia) {
	    return this.getRepository().save(provincia);
	  }

	  @RequestMapping(value = "/exists/{id}", method = RequestMethod.GET)
	  public Boolean exists(@PathVariable("id") Long id) {
		  return this.getRepository().existsById(id); 
	  }

	  @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	  public void delete(@PathVariable("id") Long id) {
  		  this.getRepository().deleteById(id);
	  }
	  
	  protected CrudRepository<Provincia, Long> getRepository() {
		  return provinciaRepository;
	  }
}
