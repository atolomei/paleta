package io.paleta.db.repository;

import org.springframework.data.repository.CrudRepository;

import io.paleta.model.Persona;

public interface PersonaRepository extends CrudRepository<Persona, Long> {

}
