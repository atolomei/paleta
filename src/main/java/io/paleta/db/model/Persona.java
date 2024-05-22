package io.paleta.db.model;

import java.time.OffsetDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "persona")
public class Persona extends PaletaObject implements Named {

	@Column(name="nombre")
	private String nombre;
	
	@Column(name="apellido")
	private String apellido;
	
	@Column(name="sexo")
	private String sexo;
	
	@Column(name="dni")
	private String dni;
	
	@Column(name="direccion")
	private String direccion;

	@Column(name="codigopostal")
	private String codigopostal;
	
	@Column(name="telefono")
	private String telefono;
	
	@Column(name="email")
	private String email;
	
	
	@Column(name="usuario")
	@OneToOne(fetch = FetchType.LAZY, targetEntity = Usuario.class)
	@JoinColumn(name = "usuario_id", nullable=true) 
	private Usuario usuario;
	
	
	
	@Column(name="fecha_nacimiento")
	private OffsetDateTime fechaNacimiento;
	
	@Column(name="cert_fisico_fecha")
	private OffsetDateTime certFisicoFecha;

	// foto				bytea,
	// foto_carnet		bytea,

	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Localidad.class)
	@JoinColumn(name = "localidad_id", nullable=false) 
	private Localidad localidad;
	
	@Override
	public String getName() {
		return nombre;
	}

}
