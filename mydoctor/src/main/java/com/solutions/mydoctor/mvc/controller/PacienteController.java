package com.solutions.mydoctor.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PacienteController {
	
	@RequestMapping(value="/pacienteInicio", method=RequestMethod.GET)
	public String goPacienteInicio(){
		
		return "pacienteInicio";

	}
	


}
