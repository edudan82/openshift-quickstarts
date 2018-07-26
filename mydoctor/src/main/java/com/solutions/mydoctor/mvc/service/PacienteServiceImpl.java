package com.solutions.mydoctor.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.solutions.base.mvc.dao.GenericDao;
import com.solutions.base.mvc.filter.CustomFilter;
import com.solutions.base.mvc.service.GenericServiceImpl;
import com.solutions.mydoctor.mvc.entity.Paciente;
import com.solutions.mydoctor.mvc.dao.PacienteDao;

@Repository("pacienteService")
@Transactional
public class PacienteServiceImpl extends GenericServiceImpl<Paciente,Long> implements PacienteService{

	@Autowired
	public PacienteDao pacienteDao;

	public PacienteServiceImpl() {}

	@Autowired
	public PacienteServiceImpl(@Qualifier("pacienteDao") GenericDao<Paciente, Long> genericDao) {
		super(genericDao);
		this.pacienteDao = (PacienteDao) genericDao;
	}

	@Override
	public List<Paciente> findAllPacientesByName(CustomFilter myCustomFilter) {
		return pacienteDao.findAllPacientesByName(myCustomFilter);
	}

	@Override
	public CustomFilter updateCustomFilter(CustomFilter myCustomFilter) {
		return pacienteDao.updateCustomFilter(myCustomFilter);
	}


	
}