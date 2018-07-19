
var MyAjax = function(targetObjectId , action, async, type, formId){
	
	var _targetObjectId = targetObjectId;
	var _url = myContextPath + action;
	var _async = async;
	var _type = type
	var _formId = formId;
	
	this.ajaxCall = function(){
	    
		$.ajax({
		    
			url        : _url    ,
			async      : _async  ,
			type       : _type   ,
			data       : _formId ,
			contentType: "application/x-www-form-urlencoded; charset-UTF-8",
			cache      : false  ,
			
			
			success     : function(response) {							
						
					        var $element = $('#' +  _targetObjectId);

					        $element.fadeOut(200, function()
					        {
					        	$element.html(response).fadeIn(300);
					        });

			
						}       ,
			
						
			error      : function(x) {
						
							alert('error ' + x.status);
			
						}      

		
		
		
		});
	}
		
	this.ajaxSave = function(){
		    
			$.ajax({
			    
				url        : _url    ,
				async      : _async  ,
				type       : _type   ,
				data       : $('#' +  _formId).serialize() ,
				contentType: "application/x-www-form-urlencoded; charset-UTF-8",
				cache      : false  ,
				
				
				success     : function(response) {							
							
						        var $element = $('#' +  _targetObjectId);

						        $element.fadeOut(200, function()
						        {
						        	$element.html(response).fadeIn(300);
						        });

				
							}       ,
				
							
				error      : function(x) {
							
								alert('error ' + x.status);
				
							}      

			
			
			
			});
	
	
	
	}
}