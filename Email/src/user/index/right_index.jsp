<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../style/css/right_index.css">
<script type="text/javascript">
window.onload=function () {
    var myDate = new Date();
    var time = myDate.getHours();
    var test = document.getElementById("time");
    if(time<=12&&time>0)
        test.innerText="早上好";
    else if(time>12&&time<=6){
        test.innerText="下午好";
    }
    else{
        test.innerText="晚上好";
    }
}
</script>
</head>
<body>

<div id="border_index">
    <p><span id="time"></span>，<span id="username">
    <%
Object obj = session.getAttribute("UserNow");
//User user_info =(User)obj;
//String user_name =user_info.getUser_name(); 
out.print(obj);
%>
</span></p>
</div>

</body>
</html>
