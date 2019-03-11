<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="com.myorg.entity.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");
   String submit = request.getParameter("submit");
   String mysql="jdbc:mysql://localhost:3306/mailbox";
   String user="root";
   String password = "sunshine000";
   if(submit!=null&&!submit.equals("")){
	   String email = request.getParameter("email");
	   String pwd = request.getParameter("pwd");
	   User user_info = null;
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection(mysql,user,password);
	   Statement stat = con.createStatement();
	   String sql = "select * from user where user_name='"+email+"' and user_pwd='"+pwd+"'";
	   ResultSet res = stat.executeQuery(sql);
	   if(res.next()){
		  //user_info = new User();
		  //user_info.setUser_name(email);
		  //user_info.setUser_pwd(pwd);
		  session.setAttribute("UserNow", email);
		  response.sendRedirect("../user/index.html");
	   }
	   else{
		   out.println("用户名或者密码错误，2s钟后返回登录页面");
		   response.setHeader("refresh","5;url=../user/login.html");
	   }   
   }
%>
</body>
</html>