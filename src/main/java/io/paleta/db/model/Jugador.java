package io.paleta.db.model;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "jugador")
public class Jugador extends PaletaObject implements Named {

	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Club.class)
	@JoinColumn(name = "club_id", nullable=false) 
	private Club club;
	
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Persona.class)
	@JoinColumn(name = "persona_id", nullable=false) 
	private Persona persona;

	@Override
	public String getName() {
		if (persona==null)
			return "null";
		return persona.getName();
	}

	
	
}
