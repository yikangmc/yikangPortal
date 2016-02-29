<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    	<script src="<%=basePath%>js/viewport740.js"></script>
    	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/invite/serveOnnew.css">
	<title>护理家</title>
</head>
	<body>
		<div class="dv_home" style=" background: url(<%=basePath%>img/protal/invite/backgroundmag.png) no-repeat;">
			<div class="font_master">
				Hi，我是${user.userName }
				<div class="font_infos">我在<font id="tel" style="color: #f4ebca;">护理家</font><br />会时刻关注你的动态</div>
			</div>
			<div class="dv_fonts">
				<p id="font_title">不出户给予您更好的康复服务</p>
				<p id="font_phone" style＝" color: #fc5c41;">${schedule }</p>
				<p id="font_ck">
					恭喜您！您已获得护理家为您提供的一次康复护理方案定制服务
				</p>
				<img src="<%=basePath%>img/protal/invite/202.png">
			</div>
			<div class="dv_bottom">
				<button class="btn_porject btn_getserver">立即预约</button>
				<button class="btn_porject btn_gethulijia">了解护理家</button>
			</div>
		</div>
	</body>
</html>