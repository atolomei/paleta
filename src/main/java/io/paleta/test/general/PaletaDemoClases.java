package io.paleta.test.general;

public class PaletaDemoClases {

	
	/** 
	 * Aca es donde se inicia el programa al ejecutar
	 */
	public static void main(String[] args) {

		Localidad a;
		Club c;
		
		
		a = new Localidad("Ciudad de Buenos Aires");
		c = new Club("CUBA");

		
		
		
		c.setLocalidad(a);
		
		System.out.println (c.getNombre());
		
		
		Localidad loca= c.getLocalidad();
		String locaNombre = loca.getNombre();
		
		System.out.println (locaNombre);
		
		
		
		System.out.println (c.toString());
		
		
		
	}
	
	
	
	
	
	
	
	
	

	
	
	
	
	

}
