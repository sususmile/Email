<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../style/css/right_index.css">
<link rel="stylesheet" href="../../style/css/InboxContent.css">
<link rel="stylesheet" href="../../style/font/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../../style/bootstrap/bootstrap.min.css"/>
<script type="text/javascript" src="../../style/jqBox/jquery-3.1.0.js"></script>
<script type="text/javascript" src="../../style/bootstrap/bootstrap.min.js"></script>
<style>
*{
  -webkit-box-sizing:inherit;
}
#border_index{
  height:604px;
}

textarea{
    width: 90%;
    height: 330px;
    vertical-align: top;
    resize: none;
    word-break: break-all;
}
.form-control{
width:450px !important; 
}

</style>
</head>
<body id="border_index">
<form action="http://localhost:8080/Email/sendServlet" method="post">
<%
	            request.setCharacterEncoding("utf-8");
	            String mysql = "jdbc:mysql://localhost:3306/mailbox";
	            String user="root";
	            String password = "sunshine000";   
	    		Object obj = session.getAttribute("UserNow");
	    		String PrevId = request.getParameter("id"); 
	    		String reciveUser="";
	    		Connection con =null;
	    		Statement stat =null;
	    		ResultSet rs =null;
	    		try {	
	    				String User = obj.toString();
	    				Class.forName("com.mysql.jdbc.Driver");
	    				con = DriverManager.getConnection(mysql, user, password);
	    				stat = con.createStatement();
	    				String sql = "select * from addressbook where id ='"+PrevId+"'";
	    				rs = stat.executeQuery(sql);
	    				response.setContentType("text/html;charset=utf-8");	    				
	    				if(rs.next()) {
		    				reciveUser = rs.getString("reciveUser");
			    			out.print("<div id=\"reciveUser\"><span>电子邮件:</span><span>"+reciveUser+"</span></div>");			
		    			}     				
	    				
	    			}catch(Exception e){
	    				e.printStackTrace();
	    				}finally{
	    					con.close();
		    				stat.close();
	    				}
	    	
	    		  %>
            <div class="modal" id="myModal" data-backdrop="false">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<span class="modal-title">新邮件</span>
						<button type="button" class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-body">
						
						<div class="input-group">
							<label class="input-group-addon">收件人:</label>
							<input type="text" class="form-control" value="<%=reciveUser%>" name="reciveUser"/>
						</div>
						<br />
						<div class="input-group">
							<label class="input-group-addon">主题:</label>
							<input type="text" class="form-control" name="subject"/>
						</div>
						<br>
						<div class="input-group">
							<label class="input-group-addon con">内容:</label>
							<textarea name="TextContent" name="TextContent"></textarea>
						</div>
					
					</div>
					<div class="modal-footer">
						<div>							
							<button type="button" data-dismiss="modal" class="btn btn-danger">取消</button>
							<button type="submit" style="margin-left:450px" name="submit" id="delMail" class="btn btn-success">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>   
        <a type="button" data-toggle="modal" href="#myModal">发送邮件</a>  
 </form>     
</body>
</html>