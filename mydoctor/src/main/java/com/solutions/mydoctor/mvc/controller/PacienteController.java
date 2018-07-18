package com.solutions.mydoctor.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	



}
