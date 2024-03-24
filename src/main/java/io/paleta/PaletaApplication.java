package io.paleta;



import io.paleta.model.Club;

 
public class PaletaApplication {

	public static void main(String[] args) {
		
		int a;
		long c;
		byte b;
		
		
		
		s.toLowerCase();
		
		
		
		
		Club club = new Club();
		
		
		
		
		club.setNombre("CUBA");
		
		System.out.print( club.getNombre());
		
		
		
		
		
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public PaletaApplication() {
	}
	
	@PostConstruct
	public void onInitialize() {
		
		std_logger.info("");
		for (String s : PaletaVersion.getAppCharacterName())
			std_logger.info(s);
		
		std_logger.info(ServerConstant.SEPARATOR);
		
		std_logger.info("");
		std_logger.info("This software is licensed under the Apache License, Version 2.0");
		std_logger.info("http://www.apache.org/licenses/LICENSE-2.0");

		initShutdownMessage();
	}
	
	

	/**
	 *
	 * 
	 */
	
	private void initShutdownMessage() {
	    Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
            	std_logger.info("");
            	std_logger.info("As the roman legionaries used to say when falling in battle");
            	std_logger.info("'Dulce et decorum est pro patria mori'...Shuting down... goodbye.");
            	std_logger.info("");
            }
        });
	}

	
}
