<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script src="<%=basePath%>js/viewport750.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/protal/publicStyle.css">
<style type="text/css">
	a {
		color: 333;
	}
	.main {
		width: 200px;
		height: 400px;
		background-color: #0faadd;
		border-radius: 7;
		position: fixed; top: 15%; left: 0px;
	}
	.main input{
		width: 100%;
		height: 40px;
		border: 0;
		padding: 0 10 0 10;
		font-size: 20px;
		word-spacing: 1px;
		letter-spacing: 1px;
		text-align: center;
	}
</style>
<body>
	<div class="main">
		UserName:<input type="text" id="username" oninput="login()"  />
		PassWord:<input type="password" id="password"  oninput="login()" />
		<a href="#" onclick="load()">登入</a>
	</div>
</body>
<script type="text/javascript">
function login(){
	var username = document.getElementById('username').value
	var password = document.getElementById('password').value

	this.user = function(){
		return {
			getUsername : function() { return username; },
			getPassword : function() { return password; }
		}
	}

}
function load(){
	var fun = new login();
	var user = fun.user();
	alert("请记好！账户:"+user.getUsername()+",密码:"+user.getPassword());
}
</script>
</html>