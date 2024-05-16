package io.paleta.setup;

import org.springframework.beans.factory.annotation.Autowired;

import io.paleta.db.model.Provincia;
import io.paleta.db.model.SystemService;
import io.paleta.db.model.Usuario;
import io.paleta.db.service.ProvinciaDBService;
import io.paleta.db.service.USuarioDBService;

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
		
		addClubes();
		
		
		
		
	}
	
	
	public USuarioDBService getUsuarioDBService() {
		return this.usuarioDBService;
	}
	

	public ProvinciaDBService getProvinciaDBService() {
		return this.provinciaDBService;
	}

	
	public void addClubes() {

		
		
	}
	
	@Override
	public String toJSON() {
		return "null";
	}

}
