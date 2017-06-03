package com.teambh.bhlkmt.util;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HibernateUtil {
	
	@Autowired
    private SessionFactory sessionFactory;

    public Session getCurrentSession() {
    	return sessionFactory.getCurrentSession();
    }
		
    public <T> void persist(final T entity) {
        getCurrentSession().persist(entity);        
    }
    
    public <T> T merge(final T entity) {
        getCurrentSession().merge(entity);   
        return entity;
    }
    
	public <T> void remove(final T entity) {
		getCurrentSession().remove(entity);
	}

	public <T> void remove(Serializable id, Class<T> entityClass) {
		T entity = findById(id, entityClass);
		remove(entity);
	}
    
    @SuppressWarnings("unchecked")	
    public <T> List<T> fetchAll(Class<T> entityClass) {        
        return getCurrentSession().createQuery("FROM "+entityClass.getName()).list();        
    }
  
    @SuppressWarnings("rawtypes")
	public <T> List fetchAll(String query) {        
        return getCurrentSession().createQuery(query).list();        
    }
    
    public <T> T findById(Serializable id, Class<T> entityClass) {
        return (T)getCurrentSession().get(entityClass, id);
    }
    
}
