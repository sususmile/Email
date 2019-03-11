$(document).ready(function(){
	$("#delMail").click(function(){
		var i;
		var mail = document.getElementsByTagName("li");
		var len = mail.length;
		var delList=[];
		for(i=0;i<len;i++){		    
			if(mail.item(i).firstChild.checked){
				delList.push(mail.item(i).firstChild.id);	
				}
			}	
		window.parent.parent.location.reload();
		$.ajax({                                
			    async : false,
	            cache : false,
	            traditional: true,
	            type : 'POST',
	            data : {
	                del_id:delList
	            },
	            url : "http://localhost:8080/Email/InBox",
	            success : function(data) {
	               
	            }
       
		});
	});
});
			
			