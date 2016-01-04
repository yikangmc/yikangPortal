<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>查看单项服务详情</title>
	<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" 			content="易康美辰,预约评估及服务" />
	<meta name="description" 		content="易康美辰,预约评估及服务" />
	<meta name="generator" 			content="易康美辰" />
	<meta name="author" 			content="易康美辰技术部" />

	<style type="text/css">
		html,body {
			font-family:"Microsoft YaHei";
		}
		.block {
			display: block;
			float: left;
			text-align: center;
		}
		.btn_one {
			width: 100%;
			height: 60px; 
			border-radius: 10px; 
			border: 0px; 
			background: #ffa919; 
			color: #fff; 
			font-size: 22px; 
			font-weight:600;
		}
		#font_selete {
			border-radius: 36px; 
			width:36px; height: 36px; 
			background: #2d86ff;
			display: block;
			margin-top: 40px;
			margin-right: 50px;
		}
		#font_selete1 {
			border-radius: 36px; 
			width:36px; height: 36px; 
			background: #2d86ff;
			display: block;
			margin-top: 50px;
			margin-right: 50px;
		}
		#btn_fonts {
			width: 150px;
			height: 60px;
			border-radius: 7px;
			font-size: 32px;
			background:  #2d86ff;
			border: 0px;
			margin-top: 40px;
		}
		#btn_fonts1 {
			width: 150px;
			height: 60px;
			border-radius: 7px;
			font-size: 42px;
			background:  #2d86ff;
			border: 0px;
			margin-top: 42px;
		}
		#font_titleone {
			width: 300px;
			margin-top: 40px;
			font-size: 26px;
		}
		#font_titleone1 {
			width: 300px;
			margin-top: 40px;
			font-size: 26px;
		}
		#dv_2 {display: none;}
		#dv_3 {display: none;}
		#dv_3 ul li { 
			height: 160px;
			line-height: 160px;
			list-style-type: none; 
			float: left;
		}
		#shangping {
			height: 180px;
			width: 560px;
			background: #666;
		}
		*{ margin: 0px; padding: 0px;}
		.dv_body {
			width: 90%;
			margin: 0 auto;
			text-align: center;
		}
		.dv_title {
			width: 100%;
			height: 110px;
		}
		#font_title {
			font-size: 42px;
			font-weight: 500;
		}
		.dv_title ul li {
			float: left;
			list-style-type: none;
		}
		.font-toptitle {
			font-size: 24px;
			font-weight: 500;
			padding-left:10px;
			padding-top:10px;
		}
		.font-bottom {
			font-size: 12px;
			font-weight: 500;
			padding-top: 10px;
			padding-left: 10px;
			margin-top: -17px;
		}
		.font-mony {
			color: #F22D7B;
			font-size: 30px;
			font-weight: 500;
		}
		.dv_service_title {
			margin-top: -15px;
		}
		.dv_service_title ul li {
			font-size: 18px;
			float: left;
			list-style-type: none;
			padding-top: 10px;
			padding-bottom: 10px;
		}
		.dv_home {
			width: 93%;
			height: 100%;
			text-align: left;
			padding: 23px;
		}
		.v1 {
			margin-top: -20px;
			font-size: 14px;
			font-weight: 500;
			width: 100%;
			margin: 0 auto;
		}
		.selectService {
			padding-bottom: 10px;
			position: fixed;
			bottom: 0px;
			margin: 0 auto;
			width:90%;
		}
		.fontstyle {
			background: url(<%=basePath%>/img/ServeImg/border-height.png) no-repeat;
			background-position: right;
		}
		a{
			color: #e3e3e3;
			text-decoration:none;
			font-weight: 500;
		}
		a:hover{
			text-decoration:none;
			font-weight: 500;
		}
		.btn_mony {
			width: 170px; 
			height: 57px; 
			border-radius: 10px; 
			border: 0px; 
			background: #2d86ff; 
			color: #fff; 
			font-size: 28px; 
			font-weight:600;
		}
		.btn_select {
			width: 280px; 
			height: 70px; 
			border-radius: 10px; 
			border: 0px; 
			background: #2d86ff; 
			color: #fff; 
			font-size: 28px; 
			font-weight:600;
		}
	</style>
	<script type="text/javascript">
		var colorTag = 1;
		var colorTagtwo = 1;
		var colors = ["#999", "#2d86ff"];
		var colorstwo = ["#999", "#2d86ff"];
		function myFunction()
		{
			colorTag = 1 - colorTag;
			document.getElementById("font_selete").style.background = colors[ colorTag];
			document.getElementById("btn_fonts").style.background = colors[ colorTag];
			document.getElementById("font_titleone").style.color = colors[ colorTag];

		}
		function myFunction2()
		{
			colorTagtwo = 1 - colorTagtwo;
			document.getElementById("font_selete1").style.background = colorstwo[ colorTag];
			document.getElementById("btn_fonts1").style.background = colorstwo[ colorTag];
			document.getElementById("font_titleone1").style.color = colorstwo[ colorTag];

		}
		function cd_dv1() {
			document.getElementById("dv_1").style.display = "block"
			document.getElementById("dv_2").style.display = "none"
			document.getElementById("dv_3").style.display = "none"
			document.getElementById("ser1").style.color = "2d86ff"
			document.getElementById("ser2").style.color = "e3e3e3"
			document.getElementById("ser3").style.color = "e3e3e3"
		}
		function cd_dv2() {
			document.getElementById("dv_1").style.display = "none"
			document.getElementById("dv_2").style.display = "block"
			document.getElementById("dv_3").style.display = "none"
			document.getElementById("ser1").style.color = "e3e3e3"
			document.getElementById("ser2").style.color = "2d86ff"
			document.getElementById("ser3").style.color = "e3e3e3"
		}
		function cd_dv3() {
			document.getElementById("dv_1").style.display = "none"
			document.getElementById("dv_2").style.display = "none"
			document.getElementById("dv_3").style.display = "block"
			document.getElementById("ser1").style.color = "e3e3e3"
			document.getElementById("ser2").style.color = "e3e3e3"
			document.getElementById("ser3").style.color = "2d86ff"
		}
		function onNew(){
			alert("提示信息：预约成功");
		}
	</script>
	<script type="text/javascript" src="<%=basePath%>/js/views/serve/serviceItemDetail.js"></script>
</head>
	<body> 
		<img style=" width: 100%;" src="${data.pictures[0].picUrl}" />
		<div class="dv_body">
			<form id="serviceItemForm" action="<%=basePath%>appointmentOrder/toReviceInfomation" method="post">
				
				<input type="hidden" name="serviceItemId" 		  value="${data.serviceItemId }" />
				
				<div id="medicinalApparatusIdsDiv" style="display:none">
				</div>
			</form>
			<div class="dv_title">
				<div style="float: left; width: 80%;">
					<ul>
						<li class="font-toptitle">${data.serviceTitle }</li>
					</ul>
				</div>
				<div style="float: left; width: 17%; height: 60px; line-height:75px;">
					<ul>
						<li class="font-mony">${data.price }</li>
					</ul>
				</div>
				<div style=" background: red; width: 82%;">
					<ul>
						<li class="font-bottom">${data.serviceContent }</li>
					</ul>
				</div>
			</div>
			<img style=" width: 100%;" src="<%=basePath%>/img/ServeImg/border.png" />
			<div class="dv_service_title">
				<ul>
					<li class="fontstyle" style="width: 26%;"><a onclick="cd_dv1()" style="color: #2d86ff" id="ser1">服务介绍</a></li>
					<li class="fontstyle" style="width: 26%;"><a onclick="cd_dv2()" id="ser2">注意事项</a></li>
					<li style="width: 48%;"><a onclick="cd_dv3()" id="ser3">所需药品和器材</a></li>
				</ul>
			</div>
			<img style=" width: 100%;" src="<%=basePath%>/img/ServeImg/border.png" />
			
			<div id="dv_1" class="dv_home">
				<div class="v1">
					<c:forEach items="${data.serviceIntroduces }" var="serviceIntroduce">
						<h4>${serviceIntroduce.title}</h4><br/>
						 &nbsp; &nbsp; ${serviceIntroduce.content}
					</c:forEach>
				</div>
			</div>
			<!-- 注意事项 -->
			<div id="dv_2" class="dv_home">
				<c:forEach items="${data.serviceNotes}" var="serviceNote">
					<h4>${serviceNote.title}</h4><br/>
					<div class="v1">
						${serviceNote.content }
					</div>
				</c:forEach>
			</div>
			
			<div id="dv_3" class="dv_home">
				<div class="v1">
					<c:forEach items="${data.medicinalApparatus}" var="medicinalApparatus">
						<div style=" height: 150px;" onclick="serviceItemDetail.selectMedicinalApparatuId(this,${medicinalApparatus.medicinalApparatuId })">
							<div class="block" style="width: 65%;">	
								<img style="width: 105px; height: 105px;" src="${medicinalApparatus.picUrl }"/>
								<input type="hidden" name="medicinalApparatuId" value="${medicinalApparatus.medicinalApparatuId }" />
							</div>
							<div class="block" id="font_titleone" style=" text-align: center; width: 33%;">${medicinalApparatus.maName }</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="selectService">
				<button  type="button" onclick="serviceItemDetail.appointmentServiceItem()" class="btn_one" >预约该项目</button>
			</div>
		</div>
	</body>
</html>
