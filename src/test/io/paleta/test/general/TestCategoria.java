package io.paleta.test.general;




import org.junit.jupiter.api.Test;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import io.paleta.db.model.Categoria;
import io.paleta.db.model.Usuario;
import io.paleta.db.service.CategoriaDBService;
import io.paleta.db.service.USuarioDBService;
import io.paleta.logging.Logger;



/**
 * <p>ABM </p>
 */
@SpringBootTest
public class TestCategoria extends BaseTest {
				
	static private Logger logger = Logger.getLogger(TestCategoria.class.getName());
	
	@Autowired
	CategoriaDBService catDB;
	
	
	@Autowired
	USuarioDBService userDB;
	
	Usuario root;
	
	
	@Override
	public boolean preCondition() {
		
		Optional<Usuario> o_root = this.userDB.getRoot();
		
		if (o_root.isPresent()) {
			root = o_root.get();
		}
		else {
			error("root user does not exist");
		}
		
		return true;
	}
	
	
	@Test
	public void executeTest() {

		preCondition();
		testCategoria();
	}
	
	
	public CategoriaDBService getCategoriaDBService() {
		return catDB;
	}


	public void setCategoriaDBService(CategoriaDBService catDB) {
		this.catDB = catDB;
	}
	
	private void testCategoria() {
		
		
		
		this.catDB.create("aldo bonzi", root);
		
		
		
	}
	
	
	

}
