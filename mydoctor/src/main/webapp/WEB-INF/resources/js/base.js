
var MyAjax = function(targetObjectId , action, async, type){
	
	var _targetObjectId = targetObjectId;
	var _url = myContextPath + action;
	var _async = async;
	var _type = type
	
	this.ajaxCall = function(){
	    
		$.ajax({
		    
			url        : _url   ,
			async      : _async ,
			type       : _type  ,
			contentType: "application/x-www-form-urlencoded; charset-UTF-8",
			cache      : false  ,
			
			
			success     : function(response) {							
						
					        var $el = $('#' +  _targetObjectId);

					        $el.fadeOut(200, function()
					        {
					            $el.html(response).fadeIn(300);
					        });

			
						}       ,
			
						
			error      : function(x) {
						
							alert(x.status);
			
						}      

		
		
		
		});
	
	
	
	}
}