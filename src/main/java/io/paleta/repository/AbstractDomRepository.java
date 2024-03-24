package io.paleta.repository;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.SessionFactory;

public abstract class AbstractDomRepository<T extends Object, I> implements DomRespository<I> {

	public void save(I object) {
		//getSessionFactory().getCurrentSession().save(object);
	}
	
	public void delete(I object) {
		//getSessionFactory().getCurrentSession().delete(object);
	}
	
//@Override
	//public I findById(Serializable id) {
		//return (I) getSessionFactory().getCurrentSession().get(getTypeOfT(), id);
	//	return null;
	//}1
	@Override
	public List<I> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getTotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean accept(Class<?> objectclass) {
		if (objectclass.isAssignableFrom(getTypeOfT())) {
			return true;
		}
		return false;
	}
	
	public Class<T> getTypeOfT() {
		Class<T> typeOfT = (Class<T>)
				((ParameterizedType)getClass()
				.getGenericSuperclass())
				.getActualTypeArguments()[0];
		return typeOfT;
	}
	
	//protected SessionFactory getSessionFactory() {
	//	return (SessionFactory)ServiceLocator.getService(BeansService.class).getBean("sessionFactory");
	//}
}
