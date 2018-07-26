package com.solutions.mydoctor.mvc.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.ScrollableResults;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solutions.base.mvc.filter.CustomFilter;
import com.solutions.mydoctor.mvc.entity.Paciente;
import com.solutions.mydoctor.mvc.service.PacienteService;

@Controller
public class PacienteController {
	
	@Autowired
	PacienteService pacienteService;
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping(value="/pacienteInicio", method=RequestMethod.GET)
	public String goPacienteInicio(){
		
		
		return "pacienteInicio";

	}
	
	@RequestMapping(value="/pacienteAgregar", method=RequestMethod.GET)
	public String goPacienteAgregar(Model model){
		
	    model.addAttribute("paciente", new Paciente());
		
		return "pacienteAgregar";

	}
	
	
	
	@RequestMapping(value="/pacienteBuscar", method=RequestMethod.GET)
	public String goPacienteBuscarGet(Model model){
		
		model.addAttribute("customFilter",  new CustomFilter());
		
		return "pacienteBuscar";

	}
	
	
	@RequestMapping(value="/pacienteMostrar", method=RequestMethod.POST)
	public String goPacienteBuscarPost(CustomFilter myCustomFilter,BindingResult bindingResult, Model model){		
		
		model.addAttribute("myCustomFilter", pacienteService.updateCustomFilter(myCustomFilter));
		System.out.println(myCustomFilter);
		model.addAttribute("pacienteList", pacienteService.findAllPacientesByName(myCustomFilter));
		System.out.println(myCustomFilter);

		return "pacienteBuscar";

	}
	
	
	
	
	@RequestMapping(value="/pacienteGuardar", method=RequestMethod.POST)
	public String goPacienteGuardar(Paciente paciente,BindingResult bindingResult, Model model){

		
		pacienteService.save(paciente);
		
		return "pacienteAgregar";

	}
	
/*
	@RequestMapping(value="/pacienteResultado", method=RequestMethod.GET)
	public String goPacienteBuscar(Model model){
	
		model.addAttribute("pacienteLista", dummyPacienteList());
		System.out.println(dummyPacienteList());
		
		return "pacienteBuscar";

	}

	*/
	public Paciente dummyPaciente(){
		
		Paciente paciente = new Paciente();
		paciente.setApellidos("cardenas");
		paciente.setNombre("Daniel");
		paciente.setFechaNacimiento(LocalDate.now().minusYears(18));
		paciente.setSexo("M");
		return paciente;
	}
	
	
	@Transactional
	public List<Paciente> dummyPacienteList(CustomFilter myCustomFilter){
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Paciente.class);
		
		criteria.add(Restrictions.like("nombreCompleto", myCustomFilter.getValues().get(0), MatchMode.ANYWHERE));
		criteria.setFirstResult(myCustomFilter.getPageNumber());
		criteria.setMaxResults(myCustomFilter.getRecordsPerPage());
		
		return criteria.list();
	}
	
	



}
