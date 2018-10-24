<%@ page language="java" contentType="text/html; charset=bg2312"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=bg2312">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("gb2312");
String mysql = "jdbc:mysql://localhost:3306/mailbox";
String user = "root";
String password = "sunshine000";
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection(mysql, user, password);
Statement stat = con.createStatement();
String email = request.getParameter("email");
String sql = "select * from user where user_name ='"+email+"'";
ResultSet rs = stat.executeQuery(sql);
if(rs.next()){
	out.print("账号已被注册");
}
else{
	out.print("账号可以使用");
}
out.flush();
%>
</body>
</html>