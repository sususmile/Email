<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../style/css/InboxNav.css">
<link rel="stylesheet" type="text/css" href="../../../style/bootstrap/bootstrap.min.css"/>
<script type="text/javascript" src="../../../style/jqBox/jquery-3.1.0.js"></script>
<script type="text/javascript" src="../../../style/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="../../../style/js/InboxNav.js"></script>
</head>
<body>
<form action="" method="post">
<div id="border">
    <div id="top">
        <ul>
            <!--  <li><input type="checkbox" id="1"/><label for="1"><a href="InboxContent.jsp" target="right">111<br><span id="item"><span></a><span id="date" name="date">2012-12-25</span></label></li>
            <li><input type="checkbox" id="2"/><label for="2">111</label></li>
            <li><input type="checkbox" id="3"/><label for="3">111</label></li>-->
            <%
	            request.setCharacterEncoding("utf-8");
	            String mysql = "jdbc:mysql://localhost:3306/mailbox";
	            String user="root";
	            String password = "sunshine000";   
	    		Object obj = session.getAttribute("UserNow");
	    		try {	
	    				String User = obj.toString();
	    				Class.forName("com.mysql.jdbc.Driver");
	    				Connection con = DriverManager.getConnection(mysql, user, password);
	    				Statement stat = con.createStatement();
	    				String sql = "select * from mail where sendUser ='"+User+"'";
	    				ResultSet rs = stat.executeQuery(sql);
	    				response.setContentType("text/html;charset=utf-8");
	    				if(!rs.next()) {
	    					out.print("<p>没有邮件</p>");
	    				}
	    				else{
	    					String reciveUser1 = rs.getString("reciveUser");
	    					String subject1 = rs.getString("subject");
	    					String date1  =rs.getString("time");
	    					String id1 = rs.getString("id");
	    					out.print("<li><input type=\"checkbox\" id=\""+id1+"\"/><label for=\""+id1+"\"><a href=\"sendBoxContent.jsp?id="+id1+"\" target=\"right\">"+reciveUser1+"<br><span id=\"item\">"+subject1+""
	    							+ "<span></a><span id=\"date\" name=\"date\">"+date1.substring(0,10)+"</span></label></li>");
	    					while(rs.next()) {
	    						String reciveUser = rs.getString("reciveUser");
		    					String subject = rs.getString("subject");
		    					String date  =rs.getString("time");
		    					String id = rs.getString("id");
		    					out.print("<li><input type=\"checkbox\" id=\""+id+"\"/><label for=\""+id+"\"><a href=\"sendBoxContent.jsp?id="+id+"\" target=\"right\">"+reciveUser+"<br><span id=\"item\">"+subject+""
		    							+ "<span></a><span id=\"date\" name=\"date\">"+date.substring(0,10)+"</span></label></li>");
		    				  }    						
	    				}
	    			}catch(Exception e){
	    				e.printStackTrace();
	    				System.out.println("发送失败");
	    				}
            %>
        </ul>
    </div>
    <div class="modal" id="myModal" data-backdrop="false">
			<div class="modal-dialog sm-lg">
				<div class="modal-content">
					<div class="modal-header">
						<span class="modal-title"></span>
						<button type="button" class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-body">
						
						<p>确认删除所选邮件吗？</p>
					
					</div>
					<div class="modal-footer">
						<div>							
							<button type="button" data-dismiss="modal">否</button>
							<button type="submit" style="margin-left:100px" name="submit" id="delMail">是</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div style="height:22px"></div>
    <div id="bottom">
        <button type="button" data-toggle="modal" data-target="#myModal">删除</button>
    </div>
</div>
</form>

</body>
</html>