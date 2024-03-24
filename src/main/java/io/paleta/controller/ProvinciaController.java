package io.paleta.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import io.paleta.logging.Logger;
import io.paleta.model.Provincia;
import io.paleta.repository.ProvinciaRepository;

@RestController
public class ProvinciaController {

	static private Logger logger = Logger.getLogger(ProvinciaController .class.getName());
	
	  private final ProvinciaRepository provinciaRepository;

	  public ProvinciaController(ProvinciaRepository provinciaRepository) {
	    this.provinciaRepository = provinciaRepository;
	  }
	  
	  @GetMapping("/provincias")
	  public Iterable<Provincia> findAllProvincia() {
		  return this.provinciaRepository.findAll();
	  }

	  @PostMapping("/provincia")
	  public Provincia addOneEmployee(@RequestBody Provincia provincia) {
	    return this.provinciaRepository.save(provincia);
	  }
}
