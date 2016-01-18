<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入瘦腿</title>
<%@ include file="/common/protalhead.jsp"%>

<script type="text/javascript" src="<%=path%>/js/views/tools/Tools.js"></script>
<script type="text/javascript" src="<%=path%>/js/views/shareUser/appointmentList.js"></script>

</head>
<body>
	<div class="container">
		<form  method="post" >
			<input type="hidden" name="userFromStr" value="瘦腿服务">
			<div class="row">
				<input type="text" name="mobileNumber">
			</div>
			<div class="row">
				<input type="text" name="capatha" ><button onclick="tools.capatchaCountdown(this)" type="button">获取验证码</button>
			</div>
			<div class="row">
				<button type="button" value="提交">提交</button>
			</div>
		</form>
	
	</div>
</body>
</html>