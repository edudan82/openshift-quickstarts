package com.solutions.mydoctor.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.solutions.base.mvc.dao.GenericDao;
import com.solutions.base.mvc.service.GenericServiceImpl;
import com.solutions.mydoctor.mvc.entity.Paciente;
import com.solutions.mydoctor.mvc.dao.PacienteDao;

@Repository("pacienteService")
public class PacienteServiceImpl extends GenericServiceImpl<Paciente,Long> implements PacienteService{

	@Autowired
	public PacienteDao pacienteDao;

	public PacienteServiceImpl() {}

	@Autowired
	public PacienteServiceImpl(@Qualifier("pacienteDao") GenericDao<Paciente, Long> genericDao) {
		super(genericDao);
		this.pacienteDao = (PacienteDao) genericDao;
	}
	
	
}