package com.solutions.mydoctor.mvc.service;

import java.util.List;

import com.solutions.base.mvc.filter.CustomFilter;
import com.solutions.base.mvc.service.GenericService;
import com.solutions.mydoctor.mvc.entity.Paciente;


public interface PacienteService extends GenericService<Paciente,Long> {

	public CustomFilter updateCustomFilter(CustomFilter myCustomFilter);
	public List<Paciente> findAllPacientesByName(CustomFilter myCustomFilter);
}
