package io.paleta.setup;

import org.springframework.beans.factory.annotation.Autowired;

import io.paleta.db.service.ProvinciaDBService;
import io.paleta.db.service.USuarioDBService;
import io.paleta.model.Provincia;
import io.paleta.model.SystemService;
import io.paleta.model.Usuario;

public class SetupService implements SystemService {

	
	@Autowired
	private final USuarioDBService usuarioDBService;
	
	@Autowired
	private final ProvinciaDBService provinciaDBService;
	
	
	public SetupService(USuarioDBService usuarioDBService, ProvinciaDBService provinciaDBService) {
		this.usuarioDBService = usuarioDBService;
		this.provinciaDBService=provinciaDBService;
	}
	
	
	
	public void setup() {
		
		addProvincias();
		
		
		
		
		
	}
	
	
	public USuarioDBService getUsuarioDBService() {
		return this.usuarioDBService;
	}
	

	public ProvinciaDBService getProvinciaDBService() {
		return this.provinciaDBService;
	}

	
	public void addProvincias() {
		
		Usuario root = getUsuarioDBService().getRoot().get();
		
		
		
		getProvinciaDBService().create(new Provincia("Santa Fe"), root);
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	@Override
	public String toJSON() {
		return null;
	}

}
