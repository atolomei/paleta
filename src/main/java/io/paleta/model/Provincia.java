package io.paleta.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "provincia")
public class Provincia extends PaletaObject {

	@Column(name="nombre")
	private String nombre;

	
	public Provincia() {
	}

	public Provincia(String name) {
		setName(name);
	}
	
	public void setName(String name) {
		this.nombre = name;
	}
	
	public String getName() {
		return this.nombre;
	}
	
	
	
	
	
		

}
