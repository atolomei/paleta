package io.paleta.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity
@Table(name = "club")
public class Club extends PaletaObject {

	@Column(name="nombre")
	private String nombre;
	
	@Column(name="direccion")
	private String direccion;
	
	@Column(name="codigoPostal")
	private String codigoPostal;
	
	@Column(name="telefono")
	private String telefono;
	
	@Column(name="email")
	private String email;
	
	@Column(name="notas")
	private String notas;
	
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Provincia.class)
	@JoinColumn(name = "provincia_id", nullable=false) 
	private Provincia provincia;

	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Localidad.class)
	@JoinColumn(name = "localidad_id", nullable=false) 
	private Localidad localidad;
	
	@Column(name="website")
	private String website;
	
	@Column(name="urlGoogleMmaps")
	private String urlGoogleMmaps;
	//logo
	
	
	public Club() {}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCodigoPostal() {
		return codigoPostal;
	}

	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNotas() {
		return notas;
	}

	public void setNotas(String notas) {
		this.notas = notas;
	}

	public Localidad getLocalidad() {
		return localidad;
	}

	public void setLocalidad(Localidad localidad) {
		this.localidad = localidad;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getUrlGoogleMmaps() {
		return urlGoogleMmaps;
	}

	public void setUrlGoogleMmaps(String urlGoogleMmaps) {
		this.urlGoogleMmaps = urlGoogleMmaps;
	}
	
	
	
	
	
	
}
