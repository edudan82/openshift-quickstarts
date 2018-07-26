var pacienteAgregar  = new MyAjax("main",  "/pacienteAgregar"    ,true ,"GET" );
var pacienteEditar   = new MyAjax("main",  "/pacienteEditar"     ,true ,"GET" );
var pacienteBuscar   = new MyAjax("main",  "/pacienteBuscar"     ,true ,"GET" );
var pacienteMostrar  = new MyAjax("main",  "/pacienteMostrar"    ,true ,"POST", "pacienteBuscarForm" );
var pacienteGuardar  = new MyAjax("main",  "/pacienteGuardar"    ,true ,"POST", "pacienteGuardarForm" );

$(document).on('click',"#pacienteAgregar",function () {        
	pacienteAgregar.ajaxCall();
});	

$(document).on('click',"#pacienteEditar",function () {        
	pacienteEditar.ajaxCall();
});	

$(document).on('click',"#pacienteBuscar",function () {        
	pacienteBuscar.ajaxCall();
});	

$(document).on('click',"#pacienteMostrar",function () {        
	pacienteMostrar.ajaxSave();
});	

$(document).on('click',"#pacienteGuardar",function () {        
	pacienteGuardar.ajaxSave();
});	