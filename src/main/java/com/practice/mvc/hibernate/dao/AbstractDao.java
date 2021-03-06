package com.practice.mvc.hibernate.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class AbstractDao <I extends Serializable, T>{
	@Autowired
	private SessionFactory sessionFactory;	
	private final Class<I> persistantClass;
	
	@SuppressWarnings("unchecked")
	public AbstractDao() {
		ParameterizedType parameterizedType = (ParameterizedType) this.getClass().getGenericSuperclass(); 
		persistantClass = (Class<I>) parameterizedType.getActualTypeArguments()[0];
	}
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public T getByKey(I key) {
		return (T) getSession().get(persistantClass, key);
	}
	
	public void persist(T entity) {
		getSession().persist(entity);
	}
	
	public void delete(T entity) {
		getSession().delete(entity);
	}
	
	public Criteria createEntityCriteria() {
		return getSession().createCriteria(persistantClass);
	}
}