<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="com.myorg.entity.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");
   String submit1 = request.getParameter("submit1");
   String mysql="jdbc:mysql://localhost:3306/mailbox";
   String user="root";
   String password = "sunshine000";
   Object obj = session.getAttribute("UserNow");
  
	   String mailNum = request.getParameter("mailNum");
	   String sendUser = obj.toString();
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection(mysql,user,password);
	   Statement stat = con.createStatement();
	   String sql = "insert into addressbook (sendUser,reciveUser) values('"+sendUser+"','"+mailNum+"')";	
		boolean rs = stat.execute(sql);
	    response.sendRedirect("http://localhost:8080/Email/src/user/edit/MessageSucess.jsp");					
		
   
%>
</body>
</html>