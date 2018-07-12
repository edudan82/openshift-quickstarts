package com.solutions.base.mvc.service;
import java.util.List;

public interface GenericService<ENTITY,ID> {

	public boolean existById(ID id);
	public boolean existBySimpleNaturalId(Object naturalIdValue);
	
	public ENTITY findById(ID id);
	public ENTITY findBySimpleNaturalId(Object naturalIdValue);
	public ENTITY getEntityBySimpleNaturalId(Object naturalIdValue);
	public ENTITY merge(ENTITY entity);
	public ENTITY save(ENTITY entity);
	
	public List<ENTITY> findAll();
	public List<ENTITY> findAllOrderByColumn(String columnMetaName);
	public List<ENTITY> findAllOrderByColumnName(String columnMetaName);
	public List<ENTITY> findAllOrderByNaturalId();	
	public List<ENTITY> getListWithIdAndName(String columnMetaId, String columnMetaName);	
	
	public long getStatisticsCache();
	
	public void flush();
	public void clear();      
	public void delete(ENTITY entity);

	
}