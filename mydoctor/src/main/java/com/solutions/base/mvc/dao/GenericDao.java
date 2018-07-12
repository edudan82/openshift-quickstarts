package com.solutions.base.mvc.dao;
import java.util.List;






public interface GenericDao<ENTITY,ID> {
	
	
	


	public List<ENTITY> findAllOrderByColumn(String columnMetaName);
	public List<ENTITY> getListWithIdAndName(String columnMetaId, String columnMetaName);
	
	
	public boolean existById(ID id);
	public boolean existBySimpleNaturalId(Object naturalIdValue);
	public ENTITY findById(ID id);
	public ENTITY findBySimpleNaturalId(Object naturalIdValue);
	public ENTITY getEntityBySimpleNaturalId(Object naturalIdValue);
	public ENTITY merge(ENTITY entity);
	public ENTITY save(ENTITY entity);
	public List<ENTITY> findAll();
	public List<ENTITY> findAllOrderByColumnName(String columnMetaName);
	public List<ENTITY> findAllOrderByNaturalId();
	public long getStatisticsCache();
	public void clear();      
	public void delete(ENTITY entity);
	public void flush();
}