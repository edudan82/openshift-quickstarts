package com.solutions.mydoctor.mvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.ScrollableResults;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.solutions.base.mvc.dao.GenericDaoImpl;
import com.solutions.base.mvc.filter.CustomFilter;
import com.solutions.mydoctor.mvc.entity.Paciente;

@Repository("pacienteDao")
public class PacienteDaoImpl extends GenericDaoImpl<Paciente,Long> implements PacienteDao{

	
	
	public CustomFilter updateCustomFilter(CustomFilter myCustomFilter) {
		
		Criteria criteria = currentSession().createCriteria(Paciente.class);		
		criteria.add(Restrictions.like("nombreCompleto", myCustomFilter.getValues().get(0), MatchMode.ANYWHERE));
		criteria.addOrder(Order.asc("id"));
		criteria.setCacheable(true);
		criteria.setReadOnly(true);
		
		ScrollableResults results = criteria.scroll();
		results.last();
		int totalOfRecords = results.getRowNumber() + 1;
		results.close();
		
		if(totalOfRecords!=myCustomFilter.getTotalOfRecords() || myCustomFilter.getTotalOfRecords()==0) {
			myCustomFilter.setPageNumber(1);
			
		}
			
		myCustomFilter.setTotalOfRecords(totalOfRecords);
		
		return myCustomFilter;
		
	}
	
	
	
	public List<Paciente> findAllPacientesByName(CustomFilter myCustomFilter){
		
		
		Criteria criteria = currentSession().createCriteria(Paciente.class);
		
		criteria.add(Restrictions.like("nombreCompleto", myCustomFilter.getValues().get(0), MatchMode.ANYWHERE));
		criteria.addOrder(Order.asc("id"));
		criteria.setFirstResult((myCustomFilter.getPageNumber()-1) * myCustomFilter.getRecordsPerPage());
		criteria.setMaxResults(myCustomFilter.getRecordsPerPage());
		criteria.setCacheable(true);
		criteria.setReadOnly(true);
		
		return criteria.list();
		
		
	}
	
}
