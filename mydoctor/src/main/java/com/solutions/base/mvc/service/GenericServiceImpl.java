package com.solutions.base.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.solutions.base.mvc.dao.GenericDao;

@Service
public abstract class GenericServiceImpl<ENTITY, ID> implements GenericService<ENTITY, ID> {

	private GenericDao<ENTITY, ID> genericDao;
	
	public GenericServiceImpl() {}

	public GenericServiceImpl(GenericDao<ENTITY, ID> genericDao) {
	
		this.genericDao = genericDao;
	}
	
	@Override	@Transactional(readOnly=true)
	public boolean existById(ID id){return genericDao.existById(id);}
	@Override	@Transactional(readOnly=true)
	public boolean existBySimpleNaturalId(Object naturalIdValue){return genericDao.existBySimpleNaturalId(naturalIdValue);}
	
	
	@Override	@Transactional(readOnly=false)
	public ENTITY findById(ID id){return genericDao.findById(id);}
	@Override	@Transactional(readOnly=false)
	public ENTITY findBySimpleNaturalId(Object naturalIdValue){return genericDao.findBySimpleNaturalId(naturalIdValue);}
	@Override	@Transactional(readOnly=false)
	public ENTITY getEntityBySimpleNaturalId(Object naturalIdValue){return genericDao.getEntityBySimpleNaturalId(naturalIdValue);}
	@Override	@Transactional(readOnly=false)
	public ENTITY merge(ENTITY entity){return genericDao.merge(entity);}
	@Override	@Transactional(readOnly=false)
	public ENTITY save(ENTITY entity){return genericDao.save(entity);}
	
	
	@Override	@Transactional(readOnly=true)
	public List<ENTITY> findAll(){return genericDao.findAll();}
	@Override	@Transactional(readOnly=true)
	public List<ENTITY> findAllOrderByColumn(String columnMetaName){return genericDao.findAllOrderByColumn(columnMetaName);}
	@Override	@Transactional(readOnly=true)
	public List<ENTITY> findAllOrderByColumnName(String columnMetaName){return genericDao.findAllOrderByColumnName(columnMetaName);}
	@Override	@Transactional(readOnly=true)
	public List<ENTITY> findAllOrderByNaturalId(){return genericDao.findAllOrderByNaturalId();}	
	@Override	@Transactional(readOnly=true)
	public List<ENTITY> getListWithIdAndName(String columnMetaId, String columnMetaName){return genericDao.getListWithIdAndName(columnMetaId, columnMetaName);}	
	
	
	@Override	@Transactional(readOnly=true)
	public long getStatisticsCache(){return genericDao.getStatisticsCache();}
	
	
	@Override	@Transactional(readOnly=false)
	public void flush(){genericDao.flush();}
	@Override	@Transactional(readOnly=false)
	public void clear(){genericDao.clear();} 
	@Override	@Transactional(readOnly=false)
	public void delete(ENTITY entity){genericDao.delete(entity);}

	

}
