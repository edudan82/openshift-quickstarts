package com.solutions.base.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ApplicationController {
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String goHome(){
		
		return "home";

	}
	
	@RequestMapping(value="/default", method=RequestMethod.GET)
	public String goDefault(){
		
		return "default";

	}
	
	@RequestMapping(value="/ajaxtest", method=RequestMethod.GET)
	public String goAjaxCall(){
		
		return "ajaxtest";

	}


}
