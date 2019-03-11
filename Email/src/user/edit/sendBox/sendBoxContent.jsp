<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../style/css/right_index.css">
<link rel="stylesheet" href="../../../style/css/InboxContent.css">
</head>
<body id="border_index">
<%
	            request.setCharacterEncoding("utf-8");
	            String mysql = "jdbc:mysql://localhost:3306/mailbox";
	            String user="root";
	            String password = "sunshine000";   
	    		Object obj = session.getAttribute("UserNow");
	    		String PrevId = request.getParameter("id"); 
	    		try {	
	    				String User = obj.toString();
	    				Class.forName("com.mysql.jdbc.Driver");
	    				Connection con = DriverManager.getConnection(mysql, user, password);
	    				Statement stat = con.createStatement();
	    				String sql = "select * from mail where id ='"+PrevId+"'";
	    				ResultSet rs = stat.executeQuery(sql);
	    				response.setContentType("text/html;charset=utf-8");	    	
	    				if(rs.next()) {
		    				String reciveUser = rs.getString("reciveUser");
		    				String subject = rs.getString("subject");
		    				String date  =rs.getString("time");
		    				String id = rs.getString("id");
		    				String content = rs.getString("textContent");
		    				out.print("<div id=\"subject\"><span>"+subject+"</span></div>");
			    			out.print("<div id=\"sendUser\"><span>发件人:</span><span>"+User+"</span></div>");
			    			out.print("<div id=\"reciveUser\"><span>收件人:</span><span>"+reciveUser+"</span></div>");
			    			out.print("<div id=\"time\"><span>时间:</span><span>"+date.substring(0,19)+"</span></div>");
			    			out.print("<div id=\"mianContent\"><span>内容:</span><span><br/>"+content.toString().trim().replace("\r\n", "<br/>")+"</span></div>"); 				
		    			}   
	    			}catch(Exception e){
	    				e.printStackTrace();
	    				System.out.println("发送失败");
	    				}
            %>
</body>
</html>