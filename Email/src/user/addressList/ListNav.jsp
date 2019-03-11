<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../style/css/InboxNav.css">
<link rel="stylesheet" type="text/css" href="../../style/bootstrap/bootstrap.min.css"/>
<script type="text/javascript" src="../../style/jqBox/jquery-3.1.0.js"></script>
<script type="text/javascript" src="../../style/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="../../style/js/del_book.js"></script>

</head>
<body>

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
	    		String reciveUser ="";
	    		String id = "";
	    		String reciveUser2="";
	    		int i = 0;
	    		int flag,j;
	    		String mail[] = new String[50];
	    		try {	
	    				String User = obj.toString();
	    				Class.forName("com.mysql.jdbc.Driver");
	    				Connection con = DriverManager.getConnection(mysql, user, password);
	    				Statement stat = con.createStatement();
	    				String sql = "select * from addressbook where sendUser ='"+User+"'";
	    				ResultSet rs = stat.executeQuery(sql);
	    				response.setContentType("text/html;charset=utf-8");
	    				if(!rs.next()) {
	    					out.print("<p>没有联系人</p>");
	    				}
	    				else{
	    					reciveUser = rs.getString("reciveUser");
	    					id = rs.getString("id");
	    					out.print("<li><input type=\"checkbox\" id=\""+id+"\"/><label for=\""+id+"\"><a href=\"ListContent.jsp?id="+id+"\" target=\"right\">"+reciveUser+"</span></label></li>");
	    				    mail[i++] =reciveUser ;
	    					while(rs.next()) {		    						
	    						flag=0;	    						
	    						reciveUser = rs.getString("reciveUser");					
		    					id = rs.getString("id");	
		    					for(j=0;j<=i;j++){	    								    						
		    						if(reciveUser.equals(mail[j])){		    							
		    							flag=1;
		    						}		    						
		    					}
		    					if(flag==0){
		    						mail[i++] = reciveUser;		    						
			    					out.print("<li><input type=\"checkbox\" id=\""+id+"\"/><label for=\""+id+"\"><a href=\"ListContent.jsp?id="+id+"\" target=\"right\">"+reciveUser+"</span></label></li>");
		    					}
	    						
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
						
						<p>确认删除该联系人吗？</p>
					
					</div>
					<div class="modal-footer">
						<div>							
							<button type="button" data-dismiss="modal">否</button>
							<button type="submit" style="margin-left:100px" name="submit" id="delBook">是</button>
						</div>
					</div>
				</div>
			</div>
	</div>
<form action="../../jsp/addBook.jsp" method="post">
		<div class="modal" id="myModal1" data-backdrop="false">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<span class="modal-title"></span>
						<button type="button" class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-body">
						
						<div class="input-group">
							<label class="input-group-addon">电子邮箱:</label>
							<input type="text" class="form-control" name="mailNum"/>
						</div>
					
					</div>
					<div class="modal-footer">
						<div>							
							<button type="button" data-dismiss="modal">取消</button>
							<button type="submit" style="margin-left:200px" name="submit1" id="add_book">添加</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div style="height:22px"></div>
    <div id="bottom">
        <button type="button" data-toggle="modal" data-target="#myModal">删除</button>
        <button type="button" data-toggle="modal" data-target="#myModal1" style="margin-left:2em">添加</button>
    </div>
    </form>
</div>


</body>
</html>