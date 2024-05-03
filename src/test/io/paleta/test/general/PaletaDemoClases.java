package io.paleta.test.general;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PaletaDemoClases {

	
	/** 
	 * Aca es donde se inicia el programa al ejecutar
	 */
	public static void main(String[] args) {

		List<String> listaJuan = new ArrayList<String>();
		
		listaJuan.add("juan");
		listaJuan.add("pedro");
		listaJuan.add("alejandro");
		listaJuan.add("ana");
		
		
		int total = 100000000;
		{
			long start = System.currentTimeMillis();
			for (int n=0; n< total; n++) {
				boolean b = listaJuan.contains("maria");
			}
			System.out.println( "lista " + (System.currentTimeMillis()-start) +  " ms");
		}
		
		
		
		
		
		
					
		Map<String, String> mapaJuan = new HashMap<String, String>();
		
		mapaJuan.put("ale", "Alejandro Tolomei");
		mapaJuan.put("juan", "Juan Bobbio");
		mapaJuan.put("ana", "Ana  X");
		mapaJuan.put("pedro", "Pedro Y");
		
		{
			long start = System.currentTimeMillis();
			for (int n=0; n< total; n++) {
				boolean b = mapaJuan.containsKey("maria");
			}
			System.out.println( "mapa " + (System.currentTimeMillis()-start) + " ms");
		}
		
		
		
		
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	

	
	
	
	
	

}
