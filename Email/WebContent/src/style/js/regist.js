function verif() {
    pwd = document.getElementById("pwd");
    iden_pwd = document.getElementById("iden_pwd");
    if(pwd.value!=iden_pwd.value){
        alert("两次密码输入不一致");
        return false;
    }
    else
        return true;
}


function verfEmail(obj) {
    var xmlReq; 
    if(window.XMLHttpRequest){
    	xmlReq = new XMLHttpRequest();
    }
    else{
    	xmlReq =new ActiveXObject(Microsoft.XMLHTTP);
    }
    xmlReq.open("post","http://localhost:8080/Email/src/jsp/veRegist.jsp",true);
    xmlReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    var parm = "eamil="+obj.value;
    xmlReq.onreadystatechange=function () {
        if(xmlReq.readyState==4 && xmlReq.status==200){           
                var test = xmlReq.responseText;
                document.getElementById("insertTest").innerHTML=test;
        }
    }
    xmlReq.send(parm);
}