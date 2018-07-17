var pacienteInicio = new MyAjax("content","http://localhost:8080/mydoctor/pacienteInicio",true);



$( document ).ready(function() { 
	
	
	$( "#pacienteInicio" ).on( "click", function() {
		pacienteInicio.loadAjax();
	});
	
});