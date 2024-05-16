package io.paleta.db.repository;

import org.springframework.data.repository.CrudRepository;

import io.paleta.db.model.Persona;

public interface PersonaRepository extends CrudRepository<Persona, Long> {

}
