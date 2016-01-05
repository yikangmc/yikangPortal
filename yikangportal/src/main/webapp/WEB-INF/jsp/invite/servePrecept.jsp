<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>免费服务，轻松获取</title>
<style type="text/css">
	html,body {
		background: #f7f7f7;
		font-family: "Microsoft YaHei";
	}
	#dv_one {
		width: 80%;
		margin: 0 auto;
	}
	.bodys {
		margin-top: 20px;
		width: 100%;
		text-align: center;
	}
	.bodys_info {
		width: 100%;
		text-align: center;
		margin-top: 15px;
	}
	.ipt_style {
		width: 100%;
		height: 50px;
		border: 1px #dadada solid;
		border-radius: 7px;
		font-size: 18px;
		text-align: center;
	}
	.btn_click {
		color: #fff; 
		background: #f45e4f; 
		margin-top: 15px;
		margin-bottom: 15px;
	}
	#bd_title {
		color: #019ffb;
		font-size: 22px;
	}
	.bd_title_info{
		font-size: 16px;
		margin: 22px 40px 20px 40px;
	}
	.fonts {
		font-size: 26px;
		margin-bottom: 30px;
	}
	#bd_bottom {
		padding-bottom: 20px;
		font-size: 18px;
		color: #999;
		text-align: left;
	}
	.bodys_two {
		font-size: 18px;
		width: 42%;
		margin: 0 auto;
		text-align: center;	
	}
</style>
<script type="text/javascript" src="<%=path%>/js/views/invite/servePrecept.js"></script>
</head>
	<body>
		<div>
			<img style="width: 100%;" src="<%=basePath %>/img/ServeImg/ServePrecept/banner.png"/>
		</div>
		<!-- 1111 -->
		<div class="bodys">
			<p id="bd_title">
				不出户，给予您更好的康复服务
			</p>
			<p class="bd_title_info">
				成为护理家的服务用户,您将获得免费的康护师居家健康评估方案
			</p>
			<c:if test="${null ne user}">
				<a href="<%=basePath %>invite/knowhulingjia?invitationCode=${user.invitationCode}" style=" font-size: 16px; color: #019ffb;" href="#">了解护理家</a>
			</c:if>
			<c:if test="${null eq user}">
				<a href="<%=basePath %>invite/knowhulingjia" style=" font-size: 16px; color: #019ffb;" href="#">了解护理家</a>
			</c:if>
		</div>
		<form id="inviteForm" onsubmit="return false">
			<input type="hidden" id="invitationCode" name="invitationCode" value="${user.invitationCode }" />
			<div class="bodys_info">
				<input class="ipt_style" type="text" name="mobileNumber" placeholder="输入您的手机号"/>
				<button id="getService" type="button" onclick="servePrecept.appointmentService()" class="ipt_style btn_click">
					获取免费的居家护理方案
				</button>
				<c:if test="${null ne user }">
					<p class="fonts">
						<font color="019ffb">${user.userName }</font>
						的随诊码:
						<font color="fe9941">${user.invitationCode }</font>
					</p>
				</c:if>

			</div>	
			<div id="bd_bottom">
					随诊码是您主治医生诊后随访的健康指导凭证,他会最大限度参与您的康复护理的实时进程
			</div>
		</form>
	</body>
</html>