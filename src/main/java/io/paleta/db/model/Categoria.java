package io.paleta.db.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "categoria")
public class Categoria extends PaletaObject {

	@Column(name="nombre")
	private String nombre;
	
	/**
	 * 	<p>Hibernate expects entities to have a no-arg constructor,
		though it does not necessarily have to be public.
		</p> 
	 */
	public Categoria() {
		
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
}
