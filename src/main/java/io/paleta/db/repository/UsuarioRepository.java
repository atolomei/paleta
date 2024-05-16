package io.paleta.db.repository;

import org.springframework.data.repository.CrudRepository;

import io.paleta.db.model.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Long> {}