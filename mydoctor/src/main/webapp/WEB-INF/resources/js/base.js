
var MyAjax = function(targetObjectId,url,async,type){
	
	var _targetObjectId = targetObjectId;
	var _url = url;
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
							
							$('#' +  _targetObjectId).html(response);
			
						}       ,
			
						
			error      : function(x) {
						
							alert(x.status);
			
						}      

		
		
		
		});
	
	
	
	}
}