package com.solutions.mydoctor.mvc.dao;

import java.util.List;

import com.solutions.base.mvc.dao.GenericDao;
import com.solutions.base.mvc.filter.CustomFilter;
import com.solutions.mydoctor.mvc.entity.Paciente;


public interface PacienteDao extends GenericDao<Paciente,Long> {

	
	public CustomFilter updateCustomFilter(CustomFilter myCustomFilter);
	public List<Paciente> findAllPacientesByName(CustomFilter myCustomFilter);
	
}
