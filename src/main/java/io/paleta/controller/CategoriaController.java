package io.paleta.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.paleta.logging.Logger;
import io.paleta.model.Categoria;
import io.paleta.repository.CategoriaRepository;

/**
 * <p>
 * 
 * </p>
 */
@RestController
public class CategoriaController {
		
	static private Logger logger = Logger.getLogger(CategoriaController.class.getName());
	
	  private final CategoriaRepository categoriaRepository;

	  public CategoriaController(CategoriaRepository categoriaRepository) {
	    this.categoriaRepository = categoriaRepository;
	  }
	  
	  //@RequestMapping(value = "/list", produces = "application/json", method = RequestMethod.GET)
	  @GetMapping("/categorias")
	  public Iterable<Categoria> findAllCategorias() {
	
		  logger.debug("here");
		  
		  return this.categoriaRepository.findAll();
	  }

	  @PostMapping("/categoria")
	  public Categoria addOneEmployee(@RequestBody Categoria categoria) {
	    return this.categoriaRepository.save(categoria);
	  }
	  
}
