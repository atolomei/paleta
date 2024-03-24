package io.paleta.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.web.authentication.www.BasicAuthenticationEntryPoint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Configuration
public class BasicAuthWebSecurityConfiguration {

	@JsonIgnore
	@Autowired
	private BasicAuthenticationEntryPoint authenticationEntryPoint;

	
}
