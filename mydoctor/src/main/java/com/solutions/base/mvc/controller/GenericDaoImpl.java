package com.citi.isawtools.mvc.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.metadata.ClassMetadata;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public abstract class GenericDaoImpl<ENTITY, ID extends Serializable> implements GenericDao<ENTITY, ID> {

	@Autowired
	@Qualifier(value = "sessionFactory")
	SessionFactory sessionFactory;

	@Autowired
	@Qualifier(value = "sessionFactoryPromote")
	SessionFactory sessionFactoryPromote;

	protected Class<? extends ENTITY> persistentClass;

	@SuppressWarnings({ "unchecked" })
	public GenericDaoImpl() {

		Type type = getClass().getGenericSuperclass();
		ParameterizedType parameterizedType = (ParameterizedType) type;
		persistentClass = (Class<? extends ENTITY>) parameterizedType.getActualTypeArguments()[0];
		
	}

	protected Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected String getNaturalId() {

		ClassMetadata classMetadata = sessionFactory.getClassMetadata(persistentClass);
		final int naturalIdAttributePosition = classMetadata.getNaturalIdentifierProperties()[0];
		String identifierPropertyName = classMetadata.getPropertyNames()[naturalIdAttributePosition];

		return identifierPropertyName;
	}

	protected String getNaturalIdPromote() {

		ClassMetadata classMetadata = sessionFactoryPromote.getClassMetadata(persistentClass);
		final int naturalIdAttributePosition = classMetadata.getNaturalIdentifierProperties()[0];
		String identifierPropertyName = classMetadata.getPropertyNames()[naturalIdAttributePosition];

		return identifierPropertyName;
	}

	@Override
	public ENTITY merge(ENTITY entity) {

		currentSession().merge(entity);
		return entity;
	}

	@Override
	public ENTITY getEntityBySimpleNaturalId(Object naturalIdValue) {
		
		@SuppressWarnings("unchecked")
		ENTITY entity = (ENTITY) currentSession().createCriteria(persistentClass).add( Restrictions.eq(this.getNaturalId(), naturalIdValue)).uniqueResult();
		
	    if (entity == null) {
			try {
				entity = persistentClass.newInstance();
			} catch (InstantiationException | IllegalAccessException e) {
				return entity;
			}

		}
		
		return entity;
		/*

		@SuppressWarnings("unchecked")
		ENTITY entity = (ENTITY) currentSession().bySimpleNaturalId(persistentClass).load(naturalIdValue);
		if (entity == null) {
			try {
				entity = persistentClass.newInstance();
			} catch (InstantiationException | IllegalAccessException e) {
				return entity;
			}

		}
		return entity;
		*/
		
		

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAll() {

		return (List<ENTITY>) currentSession().createCriteria(persistentClass).list();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAllOrderByColumnName(String columnMetaName) {

		Criteria criteria = currentSession().createCriteria(persistentClass);

		Order order = Order.asc(columnMetaName).ignoreCase();
		criteria.addOrder(order);

		return (List<ENTITY>) criteria.list();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAllOrderByColumn(String columnMetaName) {

		Criteria criteria = currentSession().createCriteria(persistentClass);

		Order order = Order.asc(columnMetaName).ignoreCase();
		criteria.addOrder(order);

		return (List<ENTITY>) criteria.list();

	}

	@Override
	public boolean existById(ID id) {

		ENTITY entity = this.findById(id);
		if (entity == null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public ENTITY save(ENTITY entity) {

		currentSession().saveOrUpdate(entity);
		return entity;
	}

	@Override
	public void delete(ENTITY entity) {

		currentSession().delete(entity);
	}
	
	
	
	
	

	@SuppressWarnings("unchecked")
	@Override
	public ENTITY findById(ID id) {

		return (ENTITY) currentSession().get(persistentClass, id);
	//	return (ENTITY) currentSession().createCriteria(persistentClass).setCacheable(true).add(Restrictions.idEq(id)).uniqueResult();

		
	}
	
	
	
	
	
	
	

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> getListWithIdAndName(String columnMetaId, String columnMetaName) {
		
	
		Criteria criteria = currentSession().createCriteria(persistentClass)				
			    .setProjection(Projections.projectionList()
						        .add(Projections.property(columnMetaId), columnMetaId)
							    .add(Projections.property(columnMetaName), columnMetaName))
			    .setResultTransformer(Transformers.aliasToBean(persistentClass));       

		criteria.addOrder(Order.asc(columnMetaName).ignoreCase());
		criteria.setCacheable(true);
        
		return (List<ENTITY>) criteria.list();


	}

	@SuppressWarnings("unchecked")
	@Override
	public ENTITY findBySimpleNaturalId(Object naturalIdValue) {
		//return null to return an empty entity use other method
		
		ENTITY entity = (ENTITY) currentSession().createCriteria(persistentClass).add( Restrictions.eq(this.getNaturalId(), naturalIdValue)).uniqueResult();

		return entity;
	//		return (ENTITY) currentSession().bySimpleNaturalId(persistentClass).load(naturalIdValue);

	}

	@Override
	public boolean existBySimpleNaturalId(Object naturalIdValue) {
		ENTITY entity = this.findBySimpleNaturalId(naturalIdValue);
		if (entity == null) {
			return false;
		} else {
			return true;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAllOrderByNaturalId() {

		Criteria criteria = currentSession().createCriteria(persistentClass);
		Order order = Order.asc(this.getNaturalId()).ignoreCase();
		criteria.addOrder(order);

		return (List<ENTITY>) criteria.list();

	}

	@SuppressWarnings("unchecked")
	@Override
	public ENTITY getEntityBySimpleNaturalIdPromote(Object naturalIdValue) {
		
	ENTITY entity = (ENTITY) currentSessionPromote().createCriteria(persistentClass).add( Restrictions.eq(this.getNaturalIdPromote(), naturalIdValue)).uniqueResult();
    if (entity == null) {
		try {
			entity = persistentClass.newInstance();
		} catch (InstantiationException | IllegalAccessException e) {
			return entity;
		}

	}
		return entity;

		
		/*

		ENTITY entity = (ENTITY) currentSessionPromote().bySimpleNaturalId(persistentClass).load(naturalIdValue);
		if (entity == null) {
			try {
				entity = persistentClass.newInstance();
			} catch (InstantiationException | IllegalAccessException e) {
				return entity;
			}

		}
		return entity;
*/
	}

	protected Session currentSessionPromote() {

		return sessionFactoryPromote.getCurrentSession();
	}

	@Override
	public ENTITY mergePromote(ENTITY entity) {

		currentSessionPromote().merge(entity);
		return entity;
	}

	@Override
	public ENTITY savePromote(ENTITY entity) {

		currentSessionPromote().saveOrUpdate(entity);
		return entity;
	}

	@Override
	public void deletePromote(ENTITY entity) {

		currentSessionPromote().delete(entity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ENTITY findByIdPromote(ID id) {

		return (ENTITY) currentSessionPromote().get(persistentClass, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ENTITY findBySimpleNaturalIdPromote(Object naturalIdValue) {
		//return null to return an empty entity use other method
		ENTITY entity = (ENTITY) currentSessionPromote().createCriteria(persistentClass).add( Restrictions.eq(this.getNaturalIdPromote(), naturalIdValue)).uniqueResult();
		
		return entity;


	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAllOrderByNaturalIdPromote() {

		Criteria criteria = currentSessionPromote().createCriteria(persistentClass);

		Order order = Order.asc(this.getNaturalIdPromote()).ignoreCase();
		criteria.addOrder(order);

		return (List<ENTITY>) criteria.list();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAllOrderByColumnNamePromote(String columnMetaName) {

		Criteria criteria = currentSessionPromote().createCriteria(persistentClass);

		Order order = Order.asc(columnMetaName).ignoreCase();
		criteria.addOrder(order);

		return (List<ENTITY>) criteria.list();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ENTITY> findAllPromote() {

		return (List<ENTITY>) currentSessionPromote().createCriteria(persistentClass).list();

	}

	@Override
	public void flushPromote() {

		currentSessionPromote().flush();
	}

	@Override
	public void clearPromote() {

		currentSessionPromote().clear();
	}

	@Override
	public boolean existByIdPromote(ID id) {

		ENTITY entity = this.findByIdPromote(id);
		if (entity == null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public boolean existBySimpleNaturalIdPromote(Object naturalIdValue) {

		ENTITY entity = this.findBySimpleNaturalIdPromote(naturalIdValue);
		if (entity == null) {
			return false;
		} else {
			return true;
		}

	}

	@Override
	public long getStatisticsCachePromote() {

		return sessionFactoryPromote.getStatistics().getSecondLevelCacheHitCount();
	}

	
	
	
	
	
	@Override
	public long getStatisticsCache() {

		return sessionFactory.getStatistics().getSecondLevelCacheHitCount();
	}

	@Override
	public void flush() {

		currentSession().flush();
	}

	@Override
	public void clear() {

		currentSession().clear();
	}

}
