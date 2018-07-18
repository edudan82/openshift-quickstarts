package com.solutions.mydoctor.mvc.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solutions.mydoctor.mvc.entity.Paciente;

@Controller
public class PacienteController {
	
	@RequestMapping(value="/pacienteInicio", method=RequestMethod.GET)
	public String goPacienteInicio(){
		
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
	
	
	@RequestMapping(value="/pacienteBuscar", method=RequestMethod.GET)
	public String goPacienteBuscar(Model model){
	
		model.addAttribute("paciente", dummyPacienteList());
		
		return "pacienteBuscar";

	}
	
	
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
		Paciente paciente = new Paciente();
		paciente.setApellidos("cardenas");
		paciente.setNombre("Daniel");
		paciente.setFechaNacimiento(LocalDate.now().minusYears(18));
		paciente.setSexo("M");
		
		pacienteList.add(paciente);
		return pacienteList;
	}
	
	



}
