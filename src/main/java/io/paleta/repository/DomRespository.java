package io.paleta.repository;

import java.io.Serializable;
import java.util.List;

public interface DomRespository<T> {

	
	public void save (T object);
	public void delete(T object);
	// public T findById(Serializable id); 

	public List<T> findAll();
	public long getTotal();
	
	

	
}
