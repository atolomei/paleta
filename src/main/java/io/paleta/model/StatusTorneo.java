package io.paleta.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "status_torneo")
public class StatusTorneo extends PaletaObject {

	@Column(name="nombre")
	private String nombre;
	
	public StatusTorneo() {
		
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}
