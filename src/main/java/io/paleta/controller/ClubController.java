package io.paleta.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonIgnore;


import io.paleta.db.model.Club;
import io.paleta.db.service.ClubDBService;
import io.paleta.logging.Logger;

@RestController
@RequestMapping(value = "/club")
public class ClubController {

	  static private Logger logger = Logger.getLogger(ClubController.class.getName());
	
	  @JsonIgnore	
	  @Autowired
	  private final ClubDBService db;
	  
	  public ClubController(ClubDBService db) {
	    this.db = db;
	  }
	  
	  @RequestMapping(value = "/getbyname/{name}", method = RequestMethod.GET)
	  public List<Club> exists(@PathVariable("name") String name) {
		  return this.getDB().getByName(name); 
	  }
	  
	  @GetMapping("/list")
	  public Iterable<Club> findAll() {
		  return this.getDB().getRepository().findAll();
	  }

	  @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
	  public Optional<Club> get(@PathVariable("id") Long id) {
		  return this.getDB().findById(id.longValue()); 
	  }
	  
	  @PostMapping("/save")
	  public Club save(@RequestBody Club categoria) {
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
	  
	  public ClubDBService getDB() {
		  return db;
	  }

	
}
