package io.paleta.db;

import org.springframework.data.repository.CrudRepository;

import io.paleta.model.Club;

public interface ClubRepository extends CrudRepository<Club, Long> {

}
