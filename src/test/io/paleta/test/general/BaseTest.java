package io.paleta.test.general;


import java.util.Map;
import java.util.TreeMap;

import org.junit.jupiter.api.Test;


import io.paleta.logging.Logger;

public abstract class BaseTest {
			
	private static final Logger logger = Logger.getLogger(BaseTest.class.getName());

	private Map<String, String> map = new TreeMap<String, String>();
	
	private long LAPSE_BETWEEN_PUT_MILLISECONDS = 0;
	
	
	public BaseTest() {
		logger.debug("Start " + this.getClass().getName());
	}
	
			
	@Test
	public abstract void executeTest();
	

	public boolean preCondition() {
		return true;
	}
	
	public void showResults() {
		logger.debug("Results");
		logger.debug("-------");
		getMap().forEach((k,v) -> logger.debug(k+" -> "+ v));
	    logger.debug("done");
		
	}

	public Map<String, String> getMap() {
		return map;
	}
	
	public void error(String string) {
		logger.error(string);
		System.exit(1);
	}
	
	protected void sleep() {
		
		if (LAPSE_BETWEEN_PUT_MILLISECONDS > 0) {
			try {
				Thread.sleep(LAPSE_BETWEEN_PUT_MILLISECONDS);
			} catch (InterruptedException e) {
			}
		}
	}
	
	
	
}
