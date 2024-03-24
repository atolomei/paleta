package io.paleta.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "Condicion_delegado")
public class CondicionDelegado extends PaletaObject {
	
	@Column(name="nombre")
	private String nombre;
	
	public CondicionDelegado() {
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


}
