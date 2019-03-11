<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
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
	else{
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection(mysql, user, password);
		Statement stat = con.createStatement();	
		String sql = "select * from user where user_name ='"+email+"'";
		ResultSet rs = stat.executeQuery(sql);
		if(rs.next()){
			out.print("账号已被注册");
		}
		else{
			out.print("账号可以使用");
		}
		out.flush();
		stat.close();
		con.close();
	}
%>

</body>
</html>