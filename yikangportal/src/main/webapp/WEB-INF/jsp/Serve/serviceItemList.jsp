<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script src="<%=basePath%>js/viewport.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/serviceList.css">
		<title>服务列表</title>
	</head>
	<body>
		<div style="height: 100%; background: #f3f3f3;">
			<!-- 服务区域 -->
			
			<c:forEach items="${data }" var="serviceItem">
				<a href="<%=basePath%>appointmentOrder/serviceItemDetail?serviceItemId=${serviceItem.serviceItemId}">
					<div class="dv_porject">
						<img src="${serviceItem.picUrl}"/>
						<div class="mag_title">${serviceItem.serviceTitle}</div>
						<div class="mag_text">
							${serviceItem.serviceContent}
							<hr class="hrs" />
							<div>
								<div class="btn_porject btn_money" >￥${serviceItem.servicePrice}</div>
								<div class="btn_porject btn_time" ><img class="tm" src="<%=basePath%>img/protal/times.png">${serviceItem.serviceTime}min</div>
							</div>	
						</div>
					</div>
				</a>
			</c:forEach>
		</div>
	</body>
</html>