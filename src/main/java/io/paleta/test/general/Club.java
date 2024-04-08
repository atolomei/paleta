package io.paleta.test.general;

public class Club {
	
	private String nombre;
	private String direccion;
	private Localidad localidad;
	
	/** 
	 * Constructor 
	 * */
	public Club() {
	}

	public Club(String nombre) {
		this.nombre=nombre;
	}
	
	
	// -----------------
	
	
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
	
	public Localidad getLocalidad() {
		return localidad;
	}

	public void setLocalidad(Localidad localidad) {
		this.localidad = localidad;
	}
	
	public String toString() {
		
		if (localidad!=null)
			return "nombre: " + getNombre() + " | "  + " Localidad: " + getLocalidad().getNombre();
		else
			return "nombre: " + getNombre() + " | "  + " Localidad: null";
	}


}