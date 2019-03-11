<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../style/css/nav.css">
<link rel="stylesheet" href="../../style/font/css/font-awesome.min.css">
<script type="text/javascript" src="../../style/js/nav.js"></script>
</head>
<body>
<div id="border">
    <div id="top">
        <ul>
            <li><span class="fa fa-edit"></span><a href="../edit/write.jsp" target="edit" onclick="skip_white()">写信</a></li>
            <li><span class="fa fa-download"></span><a href="#recBox" onclick="skip()">收信</a></li>
            <li><span class="fa fa-address-card-o"></span><a href="../addressList/List.jsp" target="edit" onclick="skip_white()">通讯录</a></li>
        </ul>
    </div>
    <div id="bottom">
        <ul>
            <li><a href="../edit/Inbox.jsp" target="edit" id="recBox">收件箱</a></li>
            <li><a href="../edit/sendBox/sendBox.jsp" target="edit" onclick="skip_white()">已发送</a></li>
            <li><a href="../edit/delBox/delBox.jsp" target="edit" onclick="skip_white()">已删除</a></li>
        </ul>
    </div>
</div>
<script>
function skip_white(){
	var rec = document.getElementById("recBox");
	rec.style.backgroundColor = "white";
}
</script>
</body>
</html>