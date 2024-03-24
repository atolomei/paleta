package io.paleta.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "Condicion_jugador")
public class CondicionJugador extends PaletaObject {

	@Column(name="nombre")
	private String nombre;

	
	public CondicionJugador() {
	}
	

	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
