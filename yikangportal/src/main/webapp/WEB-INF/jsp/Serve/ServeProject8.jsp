<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
<title>预约服务</title>
</head>
	<body> 
		<div class="dv_body">
			<div class="dv_topimg">
				<img style=" width: 100%; height: 100%;" src="<%=basePath%>/img/ServeImg/ServiceIntroduce/8.jpg" />
			</div>
			<form action="<%=basePath%>appointmentOrder/" method="post">
				
				<input type="hidden" name="serviceItemId" value="${data.serviceItemId }" />
				
				<input type="hidden" name="medicinalApparatusIds" value="${data.serviceItemId }" />
				
			</form>
			<div class="dv_title">
				<ul>
					<li class="font-toptitle">高血压中医护理</li><br />
					<li class="font-mony">￥300</li>
					<li class="font-bottom">定期监测血压，实现降压达标，平稳有效地控制血压，减缓靶器官的损害，控制心脑血管并发症的发生，改善生存质量，降低疾病负担。</li>
				</ul>
			</div>
			<img style=" width: 100%;" src="<%=basePath%>/img/ServeImg/border.png" />
			<div class="dv_service_title">
				<ul>
					<a onclick="cd_dv1()"><li class="fontstyle" style="width: 26%;">服务介绍</li></a>
					<a onclick="cd_dv2()"><li class="fontstyle" style="width: 26%;">注意事项</li></a>
					<a onclick="cd_dv3()"><li style="width: 48%;">所需药品和器材</li></a>
				</ul>
			</div>
			
			<img style=" width: 100%;" src="<%=basePath%>/img/ServeImg/border.png" />
			
			<div id="dv_1" class="dv_home">
				<h1>【病理与服务介绍】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 高血压是最常见的慢性病，也是心脑血管病最主要的危险因素，脑卒中、心肌梗死、心力衰竭及慢性肾脏病是其主要并发症。实践证明，高血压是可以预防和控制的疾病，降低高血压患者的血压水平，可明显减少脑卒中的发生。</div>
				<h1>【护理措施包括】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 1.常规药物治疗：坚持长期终生用药，小剂量开始，优先选择长效制剂，联合应用及个体化。<br /> &nbsp; &nbsp; 2.非药物治疗：为您量身制定计划，减少钠盐摄入，控制体重，戒烟限酒，坚持运动，减轻精神压力，保持心情轻松愉快。<br /> &nbsp; &nbsp; 3.中医药物调理：为您提供中医养生调理汤药，有效控制血压，抑制并发症发生，让您可以放心轻松的生活。</div>
			</div>
			<div id="dv_2" class="dv_home">
				<h1>【护理措施介绍】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 1.很多患者觉得是药三分毒，没有任何高血压症状表现不在意，便不用药，这是错误的观念，不仅容易延误病情治疗，反事与愿违只是病情恶化。<br />
					 &nbsp; &nbsp; 2.饮食控制很重要，合理膳食，营养均衡，平时控制钠盐的摄入，低脂，低热量，适当增加粗粮，蛋白质，每餐七分饱，坚持运动，控制体重。<br />
					 &nbsp; &nbsp; 3.一定要定期监测血压，半年血液检测一次，遵医嘱调整用药。</div>
			</div>
			
			<div id="dv_3" class="dv_home">
				<h1>【所需药品和器材】</h1><br/>
				<div class="v1">
					<div style=" height: 150px;">
						<div class="block"><img style="width: 125px; height: 125px;" src="<%=basePath%>/img/ServeImg/zt.png"></div>
						<div class="block" id="font_titleone" style="margin-top: 55px; text-align: center; width: 240px;">${medicinalApparatus.maName }针头</div>
					</div>
					<div style=" height: 150px;">
						<div class="block"><img style="width: 125px; height: 125px;" src="<%=basePath%>/img/ServeImg/fl.png"></div>
						<div id="font_titleone1" class="block" style="margin-top: 55px; text-align: center; width: 240px;">${medicinalApparatus.maName }敷料</div>
					</div>
				</div>
			</div>
			<a href="ReserveInformation">
				<div class="selectService">
					<button id="btn_1" class="btn_one" >预约该项目</button>
				</div>
			</a>
		</div>
	</body>
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
		}
		function cd_dv2() {
			document.getElementById("dv_1").style.display = "none"
			document.getElementById("dv_2").style.display = "block"
			document.getElementById("dv_3").style.display = "none"
		}
		function cd_dv3() {
			document.getElementById("dv_1").style.display = "none"
			document.getElementById("dv_2").style.display = "none"
			document.getElementById("dv_3").style.display = "block"
		}
		function onNew(){
			alert("提示信息：预约成功");
		}
	</script>
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
			height: 160px; 
			border-radius: 10px; 
			border: 0px; 
			background: #ffa919; 
			color: #fff; 
			font-size: 42px; 
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
		.dv_topimg {
			width: 100%;
			height: 380px;
			background-position: center;
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
			font-size: 36px;
			font-weight: 500;
			padding-left:10px;
			padding-top:10px;
		}
		.font-bottom {
			font-size: 22px;
			font-weight: 500;
			padding-top: 10px;
			padding-left: 10px;
			margin-top: -17px;
		}
		.font-mony {
			color: #F22D7B;
			font-size: 46px;
			font-weight: 500;
			margin-left: 470px;
		}
		.dv_service_title {
			margin-top: -15px;
		}
		.dv_service_title ul li {
			font-size: 28px;
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
			line-height: 34px;
		}
		.v1 {
			margin-top: -20px;
			font-size: 34px;
			font-weight: 500;
			width: 860px;
			margin: 0 auto;
		}
		.selectService {
			padding-bottom: 60px;
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
			text-decoration:none;
			color: #2d86ff;
			font-weight: 500;
		}
		a:hover{
			text-decoration:none;
			color: #2d86ff;
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
</html>
