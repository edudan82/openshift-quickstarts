package com.solutions.mydoctor.mvc.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solutions.mydoctor.mvc.entity.Paciente;
import com.solutions.mydoctor.mvc.service.PacienteService;

@Controller
public class PacienteController {
	
	@Autowired
	PacienteService pacienteService;
	
	@RequestMapping(value="/pacienteInicio", method=RequestMethod.GET)
	public String goPacienteInicio(Model model){
		
		model.addAttribute("pacienteBuscar", new Paciente());
		
		return "pacienteInicio";

	}
	
	@RequestMapping(value="/pacienteAgregar", method=RequestMethod.GET)
	public String goPacienteAgregar(Model model){
		
	    model.addAttribute("paciente", new Paciente());
		
		return "pacienteAgregar";

	}
	
	
	@RequestMapping(value="/pacienteEditar", method=RequestMethod.GET)
	public String goPacienteEditar(Model model){
	
		model.addAttribute("paciente", dummyPaciente());
		
		return "pacienteAgregar";

	}
	
	@RequestMapping(value="/pacienteBuscar", method=RequestMethod.POST)
	public String goPacienteBuscar(Paciente pacienteBuscar,BindingResult bindingResult, Model model){
	

		
		model.addAttribute("pacienteLista", pacienteService.findAll());
		
		return "pacienteBuscar";

	}
	
	@RequestMapping(value="/pacienteGuardar", method=RequestMethod.POST)
	public String goPacienteGuardar(Paciente paciente,BindingResult bindingResult, Model model){
	
		System.out.println(paciente);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		LocalDate fechaNacimiento = LocalDate.parse("19-04-1982", formatter);
		paciente.setFechaNacimiento(fechaNacimiento );
		
		System.out.println(paciente);
		
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
	
	
	
	public List<Paciente> dummyPacienteList(){
		List<Paciente> pacienteList = new ArrayList<Paciente>();
		
		pacienteList.add(dummyPaciente());
		
		return pacienteList;
	}
	
	



}
