var pacienteAgregar = new MyAjax("main",  "/pacienteAgregar"   ,true ,"GET" );
var pacienteEditar  = new MyAjax("main",  "/pacienteEditar"    ,true ,"GET" );
var pacienteBuscar  = new MyAjax("content",  "/pacienteBuscar"    ,true ,"GET" );

$(document).on('click',"#pacienteAgregar",function () {        
	pacienteAgregar.ajaxCall();
});	

$(document).on('click',"#pacienteEditar",function () {        
	pacienteEditar.ajaxCall();
});	

$(document).on('click',"#pacienteBuscar",function () {        
	pacienteBuscar.ajaxCall();
});	