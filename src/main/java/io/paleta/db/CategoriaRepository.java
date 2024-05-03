package io.paleta.db;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import io.paleta.model.Categoria;


/**
 * 
 *  <S extends T> S save(S entity);
 *  <S extends T> Iterable<S> saveAll(Iterable<S> entities);
 *  Optional<T> findById(ID id);
 * 	boolean existsById(ID id);
 *  Iterable<T> findAll();
 *  Iterable<T> findAllById(Iterable<ID> ids);
 * 	long count();
 *  void deleteById(ID id);
 * 	void delete(T entity);
 * 	void deleteAllById(Iterable<? extends ID> ids);
 * 	void deleteAll(Iterable<? extends T> entities);
 *  void deleteAll();
 * 
 */
public interface CategoriaRepository extends CrudRepository<Categoria, Long> {}
