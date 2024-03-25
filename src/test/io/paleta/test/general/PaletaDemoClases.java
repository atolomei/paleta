package io.paleta.test.general;

public class PaletaDemoClases {

	
	/** 
	 * Aca es donde se inicia el programa al ejecutar
	 */
	public static void main(String[] args) {

		Localidad caba = new Localidad("caba");
		Club cuba = new Club("CUBA");

		
		cuba.setLocalidad(caba);
		
		System.out.println (cuba.getNombre());
		
		
		System.out.println (cuba.toString());
		
		
		
	}
	
	
	
	
	
	
	
	
	

	
	
	
	
	

}
