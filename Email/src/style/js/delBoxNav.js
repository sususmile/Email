$(document).ready(function(){
	$("#abdelMail").click(function(){
		var i;
		var mail = document.getElementsByTagName("li")
		var len = mail.length;
		var delList=[];
		for(i=0;i<len;i++){		    
			if(mail.item(i).firstChild.checked){
				delList.push(mail.item(i).firstChild.id);	
				}
			}
		window.parent.parent.location.reload();
		alert(delList);
		$.ajax({                                
			    async : false,
	            cache : false,
	            traditional: true,
	            type : 'POST',
	            data : {
	                del_id:delList
	            },
	            url :"http://localhost:8080/Email/delBox",
	            success : function(data) {
	            	
	            }
       
		});
	});
	
	$("#recovMail").click(function(){
		var i;
		var mailc = document.getElementsByTagName("li")
		var lenc = mailc.length;
		var delList=[];
		for(i=0;i<lenc;i++){		    
			if(mailc.item(i).firstChild.checked){
				delList.push(mailc.item(i).firstChild.id);	
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
	            url :"http://localhost:8080/Email/recoveBox",
	            success : function(data) {
	            	
	            }
       
		});
	});
});