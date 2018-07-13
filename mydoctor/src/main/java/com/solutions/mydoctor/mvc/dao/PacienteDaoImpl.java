package com.solutions.mydoctor.mvc.dao;

import org.springframework.stereotype.Repository;

import com.solutions.base.mvc.dao.GenericDaoImpl;
import com.solutions.mydoctor.mvc.entity.Paciente;

@Repository("pacienteDao")
public class PacienteDaoImpl extends GenericDaoImpl<Paciente,Long> implements PacienteDao{

	
	
}
