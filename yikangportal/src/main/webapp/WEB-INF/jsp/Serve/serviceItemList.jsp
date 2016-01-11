<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <meta name="format-detection" content="telephone=no" />
	    <meta name="viewport" content="initial-scale=1.0,maximum-scale=0.6,minimum-scale=0.6,width=device-width" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>服务列表</title>
    	<script src="<%=basePath%>js/viewport.js"></script>
		<style type="text/css">
			html {
				background: #999;
			}
			body {
				width: 640px;
				margin:0 auto;
			}
			*{ margin: 0px; padding: 0px;}
			.dv_body {
				padding:18px 5px 0px 5px;
				text-align: center;
				font-family:"Microsoft YaHei";
			}
			.dv_title {
				background: black;
				height: 40px;
				line-height: 40px;	
				font-size: 22px;
				text-align: center;
				color: #fff;
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
				margin-top: 5px;
				height: 40px;
				line-height: 40px;
				vertical-align: middle;
				font-size:24px;
				color: #999;
			}
			.font_money {
				font-size: 24px;
			}
			a{
				text-decoration:none;
				color: black;
			}
			a:hover{
				text-decoration:none;
				color: black;
			}
			.mag_dv {
				float: left;
				width: 30%;
			}
			.font_dv {
				float: left;
				width: 68%;
				margin-right: 12px;
			}
		</style>
	</head>

	<body>
		<c:forEach items="${data }" var="serviceItem">
			<a href="<%=basePath%>appointmentOrder/serviceItemDetail?serviceItemId=${serviceItem.serviceItemId}">
				<div class="dv_body">
					<div class="mag_dv ">
						<img style="width: 135px; float:left; margin-left: 14px;" src="${serviceItem.picUrl}">
					</div>
					<div class="font_dv ">
						<p style="font-size: 24px;">${serviceItem.serviceTitle}</p>
						<p style="font-size: 20px;">${serviceItem.serviceContent}</p>
						<p class="font_bottom">
							<img src="<%=basePath%>/img/ServeImg/time.png" />${serviceItem.serviceTime } &nbsp; 
							<font class="font_money" color="#F22D7B">${serviceItem.servicePrice} </font>
						</p>
					</div>
				</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"/>
			</a>
		</c:forEach>
	</body>
</html>
