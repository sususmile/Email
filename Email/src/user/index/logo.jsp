<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../style/css/logo.css">

</head>
<body>
<div id="total">
    <span id="logo"><a href="#" onclick="refresh()"><img src="../../image/logo.png"></a></span>
    <span id="user"></span>
</div>
</body>
<script>
function refresh(){
	window.parent.location.reload();
}
</script>
</html>