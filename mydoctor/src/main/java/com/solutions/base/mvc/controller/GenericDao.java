package com.citi.isawtools.mvc.dao;
import java.util.List;






public interface GenericDao<ENTITY,ID> {
	
	
	


	public List<ENTITY> findAllOrderByColumn(String columnMetaName);
	public List<ENTITY> getListWithIdAndName(String columnMetaId, String columnMetaName);
	
	
	public boolean existById(ID id);
	public boolean existByIdPromote(ID id);
	public boolean existBySimpleNaturalId(Object naturalIdValue);
	public boolean existBySimpleNaturalIdPromote(Object naturalIdValue);
	public ENTITY findById(ID id);
	public ENTITY findByIdPromote(ID id);
	public ENTITY findBySimpleNaturalId(Object naturalIdValue);
	public ENTITY findBySimpleNaturalIdPromote(Object naturalIdValue);
	public ENTITY getEntityBySimpleNaturalId(Object naturalIdValue);
	public ENTITY getEntityBySimpleNaturalIdPromote(Object naturalIdValue);
	public ENTITY merge(ENTITY entity);
	public ENTITY mergePromote(ENTITY entity);
	public ENTITY save(ENTITY entity);
	public ENTITY savePromote(ENTITY entity);
	public List<ENTITY> findAll();
	public List<ENTITY> findAllOrderByColumnName(String columnMetaName);
	public List<ENTITY> findAllOrderByColumnNamePromote(String columnMetaName);
	public List<ENTITY> findAllOrderByNaturalId();
	public List<ENTITY> findAllOrderByNaturalIdPromote();
	public List<ENTITY> findAllPromote();	
	public long getStatisticsCache();
	public long getStatisticsCachePromote();
	public void clear();   
	public void clearPromote();   
	public void delete(ENTITY entity);
	public void deletePromote(ENTITY entity);
	public void flush();
	public void flushPromote();
}