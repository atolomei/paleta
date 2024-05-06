package io.paleta.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

/**
 * <p></p>
 */
@Entity
@Table(name = "localidad")
public class Localidad extends PaletaObject {
	
	@Column(name="nombre")
	private String nombre;
	
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Provincia.class)
	@JoinColumn(name = "provincia_id", nullable=false) 
	private Provincia provincia;
	
	
	public Localidad() {
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}

	
	
	
	
	
}
