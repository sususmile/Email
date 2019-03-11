function verif() {
    pwd = document.getElementById("pwd");
    iden_pwd = document.getElementById("iden_pwd");
    ver_test = document.getElementById("insertTest");
    if(ver_test.innerText=="账号已被注册"){
    	alert("账号已被使用!请重新输入");
    	return false;
    }
    else if(pwd.value!=iden_pwd.value){
        alert("两次密码输入不一致");
        return false;
    }
    else{
    	 return true;
    }     
}

var xmlReq = false;
function verfEmail(obj) {
    xmlReq = false; 
    if(window.XMLHttpRequest){
    	xmlReq = new XMLHttpRequest();
    	if(xmlReq.ovverideMimeType){ // 设置MiME类别   
            xmlReq.ovverideMimeType('text/xml');   
        }   
    }
    else if(window.ActiveXObject){ //说明是IE浏览器   
        try{   
            xmlReq = new ActiveXObject("Msxml2.XMLHTTP");   
        }catch(e){   
            try{   
            	xmlReq = new ActiveXObject("Microsoft.XMLHTTP");   
            }catch(e){}   
        }   
    }  
    if(!xmlReq){ // 异常，创建对象实例失败   
        alert("创建XMLHttpRequest对象失败");   
        return false ;   
    }   
    var parm = obj.value;
    xmlReq.onreadystatechange=function () {
        if(xmlReq.readyState==4 && xmlReq.status==200){           
                var test = xmlReq.responseText;
                document.getElementById("insertTest").innerHTML=test;  
                if(document.getElementById("insertTest").innerText=="账号已被注册"){  	
                	document.getElementById("insertTest").style.color="red";
                }
                else{
                	document.getElementById("insertTest").style.color="green";
                }      
        }
    }
    xmlReq.open("GET","http://localhost:8080/Email/src/jsp/regist.jsp?email="+parm,true);
    xmlReq.send(null); 
}