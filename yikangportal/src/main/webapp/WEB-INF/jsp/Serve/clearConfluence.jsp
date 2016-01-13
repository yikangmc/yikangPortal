<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="<%=basePath%>js/viewport.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/clear.css">
	<title>预约成功---预约详情</title>
</head>
	<body>
		<div class="dv_title">
			<img src="<%=basePath%>img/protal/yes.png">
			<p id="fonts_complete">恭喜！您已预约成功！</p>
			<p id="fonts_sertime">工作人员将会在15分钟内与您联系！</p>
		</div>
		<div class="ser_infotitle">服务信息</div>
		<hr class="hrs" />
		<div class="ser_infos">
			<div>
					<div class="ser_servicetitle">服务项目</div>
					<div class="ser_serviceinfo">护理家康复瘦腿</div>
			</div>
			<div>
					<div class="ser_servicetitle">服务时间</div>
					<div class="ser_serviceinfo">90min</div>
			</div>
			<div>
					<div class="ser_servicetitle">地址</div>
					<div class="ser_serviceinfo">北京市朝阳区</div>
			</div>
			<!--
			<div>
					<div class="ser_servicetitle">次数</div>
					<div class="ser_servicerig">*10</div>
			</div>
		    -->
			<hr class="hrs_bottom" />
			<div style="margin-top: -20px;">
					<div class="ser_servicetitle">订单金额</div>
					<div class="ser_servicered">￥1880.0</div>
			</div>
			<!--
			<div>
					<div class="ser_servicetitle">优惠券</div>
					<div class="ser_servicered">￥0.0</div>
			</div>
		    -->
		</div>
		
		<!-- 
		<div class="dv_info">
			<p>订单编号：488773474432</p>
			<p>订单时间：2016-01-08 &nbsp; 20:33:21</p>
		</div>
		-->
		<div class="dv_bottom">
			<div class="fonts_moneyclick">
				<button id="btn_onclick" type="button">立即支付</button>
			</div>
			<div class="fonts_money">合计 : <font color="red"> ￥1880.0</font></div>
		</div>
	</body>
</html>