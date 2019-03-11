<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>写信</title>
<link rel="stylesheet" href="../../style/css/right_index.css">
 <link rel="stylesheet" href="../../style/css/write.css">
 <script type="text/javascript" src="../../style/js/send.js"></script>
</head>
<body>
<form action="http://localhost:8080/Email/sendServlet" method="post" onsubmit="return verify()" enctype="multipart/form-data">
<div id="border_index">
    <div id="topText">普通邮件</div>
    <div id="secText"><input type="submit" value="发送" name="submit">
        
    </div>
    <div id="Maintext">
        <div id="recive"> <span>收件人</span><input type="email" name="reciveUser" id="reciveUser"></div>
        <div id="theme"><span>主题</span><input type="text" name="subject"></div>
        <div id="file">
            <input type="file" name="file">
        </div>
        <div id="editText">
        <span>正文</span><textarea name="TextContent"></textarea>
        </div>
        <span id="send">发件人:<i name="sendUser"> <%
Object obj = session.getAttribute("UserNow");
//User user_info =(User)obj;
//String user_name =user_info.getUser_name(); 
out.print(obj);
%></i><span></span></span>
    </div>
</div>
</form>
</body>
</html>