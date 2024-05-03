package io.paleta.test.general;




import org.junit.jupiter.api.Test;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import io.paleta.db.CategoriaDBService;
import io.paleta.db.USuarioDBService;
import io.paleta.logging.Logger;
import io.paleta.model.Usuario;



@SpringBootTest
public class TestCategoria extends BaseTest {
				
	static private Logger logger = Logger.getLogger(TestCategoria.class.getName());
	
	@Autowired
	CategoriaDBService catDB;
	
	
	@Autowired
	USuarioDBService userDB;
	
	@Test
	public void executeTest() {
		
		Optional<Usuario> o_root = this.userDB.getRoot();
		
		if (o_root.isPresent()) {
		
			logger.info(o_root.get().toString());
			
			this.catDB.create("aldo bonzi", o_root.get());
		}
		

	}

}
