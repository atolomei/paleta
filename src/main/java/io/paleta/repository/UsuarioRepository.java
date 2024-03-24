package io.paleta.repository;

import org.springframework.data.repository.CrudRepository;


import io.paleta.model.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Long> {}