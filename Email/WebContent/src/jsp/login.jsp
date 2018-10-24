<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("gb2312");
   String submit = request.getParameter("submit");
   String mysql="jdbc:mysql://localhost:3306/mailbox";
   String user="root";
   String password = "sunshine000";
   if(submit!=null&&!submit.equals("")){
	   String email = request.getParameter("email");
	   String pwd = request.getParameter("pwd");
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection(mysql,user,password);
	   Statement stat = con.createStatement();
	   String sql = "select * from user where user_name='"+email+"' and user_pwd='"+pwd+"'";
	   ResultSet res = stat.executeQuery(sql);
	   if(res.next()){
		   response.sendRedirect("../user/index.html");
	   }
	   else{
		   out.println("ÓÃ»§Ãû»òÕßÃÜÂë´íÎó£¬2sÖÓºó·µ»ØµÇÂ¼Ò³Ãæ");
		   response.setHeader("refresh","5;url=../user/login.html");
	   }

   }
%>
</body>
</html>