<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ include file="/common/protalhead.jsp"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head>	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/invite/servePrecept.css">	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>    <script src="<%=basePath%>js/viewport740.js"></script>	<script type="text/javascript" src="<%=path%>/js/views/invite/servePrecept.js"></script>	<title>佳佳康复-居家型术后及慢性病康复护理专家</title></head>	<body>	<form id="inviteForm" onsubmit="return false">		<div class="dv_home" style=" background: url(<%=basePath%>img/protal/invite/backgroundmag.png) no-repeat;">			<div class="font_master">				Hi，我是${user.userName }				<div class="font_infos">我在<font style="color: #f4ebca;">佳佳康复</font><br />会时刻关注你的动态</div>			</div>			<div class="dv_fonts">				<p id="font_title">不出户给予您更好的康复服务</p>				<p id="font_info">成为佳佳康复的服务用户，您将获得免费的康护师居家健康评估方案</p>				<p id="font_ck">					<c:if test="${null ne user}">						<a href="<%=basePath %>invite/knowhulingjia?invitationCode=${user.invitationCode}" style="color: #1795fc;">了解佳佳康复 </a>						<img src="<%=basePath%>img/protal/invite/now.png">					</c:if>				</p>			</div>			<div class="dv_service">				<img src="<%=basePath%>img/protal/invite/master.png">				<div class="ipt_service">					<input type="hidden" id="invitationCode" name="invitationCode" value="${user.invitationCode }" />					<input class="ipt_porject ipt_phone" type="text" name="mobileNumber" placeholder="输入您的手机号"/>					<button id="getService" type="button" onclick="servePrecept.appointmentService()" class="ipt_porject ipt_getserver">						获取免费的居家护理方案				</button>				</div>				<img id="yun" src="<%=basePath%>img/protal/invite/yun.png" />			</div>			<div class="dv_bottom" >				<p id="font_btmtit">${user.userName }的随诊码：<span id="btntit202">${user.invitationCode }</span></p>				<p id="warm_prompt">随诊码是您主治医生诊后随访的健康指导凭证他会最大现付参与您的康复护理的实时进程</p>			</div>		</div>	</form>	</body></html>