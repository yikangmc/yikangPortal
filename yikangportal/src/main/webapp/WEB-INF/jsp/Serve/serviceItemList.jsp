<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>服务列表</title>
	<style type="text/css">
		*{ margin: 0px; padding: 0px;}
		.dv_body {
			padding: 40px;
			width: 100%;
			margin: 0 auto;
			text-align: center;
			font-family:"Microsoft YaHei";
		}
		.dv_title {
			background: black;
			height: 70px;
			line-height: 70px;
			font-size: 32px;
			font-weight: 600;
			text-align: center;
			color: #fff;
		}
		.dv_info {
			margin: 0 auto;
			margin-top: 20px;
			margin-bottom: 20px;
			width: 900px;
			text-align: center;
		}
		.info_left {
			float: left;
		}
		.info_right {
			float: right;
			padding-bottom: 20px;
		}
		.info_right ul li {
			list-style-type: none;
		}
		.font_title {
			text-align: center;
			margin-top: 25px;
			font-size:40px;
			font-weight: 500;
			width: 485px;
			display: block;
		}
		.font_body {
			text-align: center;
			margin-top: 10px;
			width: 485px;
			font-size:20px;
			display: block;
		}
		.font_bottom {
			display: block;
			text-align: center;
			margin-top: 10px;
			height: 50px;
			line-height: 50px;
			vertical-align: middle;
			font-size:24px;
			color: #999;
		}
		.font_money {
			font-size: 28px;
		}
		a{
			text-decoration:none;
			color: black;
		}
		a:hover{
			text-decoration:none;
			color: black;
		}
	</style>
</head>

<body>
	<div class="dv_title">护理家</div>
	<c:forEach items="${data }" var="serviceItem">
		<a href="<%=basePath%>/appointmentOrder/serviceItemDetail?serviceItemId=${serviceItem.serviceItemId}">
			<div class="dv_body">
				<div class="col-sm-6 col-xs-6" style＝“flost:left;”>
					<img src="<%=basePath%>/img/ServeImg/1.png">
				</div>
				<div class="col-sm-6 col-xs-6" style＝“flost:left;”>
					<h4>${serviceItem.serviceTitle}</h2>
					<h5>${serviceItem.serviceContent}</h4>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" />${serviceItem.serviceTime } &nbsp; 
						<font class="font_money" color="#F22D7B">${serviceItem.price} </font>
					</p>
				</div>
			</div>
			<img style="width: 100%; margin-top: 40px;" src="<%=basePath%>/img/ServeImg/border.png"/>
		</a>
	</c:forEach>
</body>
</html>
