package io.paleta.model;

import java.time.OffsetDateTime;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;



public class PaletaObject extends JsonObject {

	private long id;
	
	
	private OffsetDateTime created;
	
	
	private OffsetDateTime lastModified;
	
	private Usuario lastModifiedUser;
	
	
	public PaletaObject() {}

	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public OffsetDateTime getCreated() {
		return created;
	}

	public void setCreated(OffsetDateTime created) {
		this.created = created;
	}
	
	public OffsetDateTime getLastModified() {
		return lastModified;
	}

	public void setLastModified(OffsetDateTime lastModified) {
		this.lastModified = lastModified;
	}

	public Usuario getLastModifidUser() {
		return lastModifidUser;
	}

	public void setLastModifidUser(Usuario lastModifidUser) {
		this.lastModifidUser = lastModifidUser;
	}

	

	
	
}
