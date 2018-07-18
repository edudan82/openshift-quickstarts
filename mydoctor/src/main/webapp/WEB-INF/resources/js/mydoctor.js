
$( document ).ready(function() { 
	
	var pacienteInicio  = new MyAjax("content", myContextPath + "/pacienteInicio"  ,true ,"GET" );
	var pacienteAgregar = new MyAjax("content", myContextPath + "/pacienteAgregar" ,true ,"GET" );
	var pacienteGuardar = new MyAjax("content", myContextPath + "/pacienteGuardar" ,true ,"POST");
	
	$( "#pacienteInicio" ).on( "click", function() {
		pacienteInicio.ajaxCall();
	});
	
	$( "#pacienteAgregar" ).on( "click", function() {
		alert("click" + myContextPath);
		pacienteAgregar.ajaxCall();
	});
	
	$( "#pacienteGuardar" ).on( "click", function() {
		pacienteGuardar.ajaxCall();
	});
	
	
	
});