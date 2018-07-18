var pacienteInicio  = new MyAjax("content", "/pacienteInicio" ,true ,"GET" );

$(document).on('click',"#pacienteInicio",function () {        
	pacienteInicio.ajaxCall();
});





