package io.paleta.model;


import io.paleta.logging.Logger;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;




public class JsonObject implements Jsonable {

	static private Logger logger =	Logger.getLogger(JsonObject.class.getName());

	@JsonIgnore 
	static final private ObjectMapper mapper = new ObjectMapper();

	  
	static  {
		mapper.registerModule(new JavaTimeModule());
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}
	
	public JsonObject() {
	}
	
	@JsonIgnore 
	public ObjectMapper getObjectMapper() {
		return mapper;
	}
	
	@Override
	public String toString() {
			StringBuilder str = new StringBuilder();
			str.append(this.getClass().getSimpleName());
			str.append(toJSON());
			return str.toString();
	}

	
	@Override
	public String toJSON() {
	  try {
			return getObjectMapper().writeValueAsString(this);
		} catch (JsonProcessingException e) {
					logger.error(e);
					return "\"error\":\"" + e.getClass().getName()+ " | " + e.getMessage()+"\""; 
		}
	}
	
	

}
