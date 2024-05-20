package io.paleta.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonIgnore;

import io.paleta.db.model.Categoria;
import io.paleta.db.service.CategoriaDBService;
import io.paleta.logging.Logger;
import io.paleta.model.TablaPosicion;

@RestController
@RequestMapping(value = "/tabla")
public class TablaController {
	
	static private Logger logger = Logger.getLogger(CategoriaController.class.getName());
	 
	  //@JsonIgnore
	  //@Autowired
	  //private  CategoriaDBService db;
	  
	  
	  
	  public TablaController() {
	    
	  }
	  
	  
	  @RequestMapping(value = "/get/{torneoId}/{categoriaId}", method = RequestMethod.GET)
	  @ResponseBody
	  public ResponseEntity<List<TablaPosicion>> get() {
		  
		  	List<TablaPosicion> list = new ArrayList<TablaPosicion>();
			
			TablaPosicion e1 = new TablaPosicion();
			e1.equipo="CUBA";
			e1.puntos=10;
			
			TablaPosicion e2 = new TablaPosicion();
			e2.equipo="Belgrano Social";
			e2.puntos=8;
			
			TablaPosicion e3 = new TablaPosicion();
			e3.equipo="Chicago B";
			e3.puntos=8;
			
			TablaPosicion e4 = new TablaPosicion();
			e4.equipo="Gure Echea";
			e4.puntos=4;

			TablaPosicion e5 = new TablaPosicion();
			e5.equipo="Navarro";
			e5.puntos=2;
			
			list.add(e1);
			list.add(e2);
			list.add(e3);
			list.add(e4);
			list.add(e5);
			
			return new ResponseEntity<List<TablaPosicion>>(list, HttpStatus.OK);
	  }

	  

}
