<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%

	request.setCharacterEncoding("utf-8");
	String submit = request.getParameter("submit");
	String mysql = "jdbc:mysql://localhost:3306/mailbox";
	String user = "root";
	String password = "sunshine000";
	if(submit!=null&&!submit.equals("")){
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection(mysql, user, password);
		Statement stat = con.createStatement();
		String sql = "insert into user(user_name,user_pwd)values('"+email+"','"+pwd+"')";
		int i = stat.executeUpdate(sql);
		if(i==1){
			out.println("注册成功!页面将于2s后跳转到登录页面");
			response.setHeader("refresh","2;url=../user/login.html");
		}
		else{
			out.println("<script>alert('注册失败!页面将于2s后返回注册页面')</script>");
			response.setHeader("refresh","2;url=../user/regist.html");
		}
		stat.close();
		con.close();
	}
%>

</body>
</html>