$(document).ready(function(){
	$("#delBook").click(function(){
		var i;
		var book = document.getElementsByTagName("li");
		var len = book.length;
		var delList=[];
		for(i=0;i<len;i++){		    
			if(book.item(i).firstChild.checked){
				delList.push(book.item(i).firstChild.id);	
				}
			}		
		$.ajax({                                
			    async : false,
	            cache : false,
	            traditional: true,
	            type : 'POST',
	            data : {
	                del_id:delList
	            },
	            url :"http://localhost:8080/Email/delBook",
	            success : function(data) {
	            	window.parent.parent.location.reload();
	            }
       
		});
	});
});