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
				<img style=" width: 100%; height: 100%;" src="<%=basePath%>/img/ServeImg/ServiceIntroduce/11.jpg" />
			</div>
			<form action="<%=basePath%>appointmentOrder/" method="post">
				
				<input type="hidden" name="serviceItemId" value="${data.serviceItemId }" />
				
				<input type="hidden" name="medicinalApparatusIds" value="${data.serviceItemId }" />
				
			</form>
			<div class="dv_title">
				<ul>
					<li class="font-toptitle">造瘘的护理</li><br />
					<li class="font-mony">￥300</li>
					<li class="font-bottom">专业指导您使用造口袋，心理支持和鼓励，预防并发症，易康美辰带您一起康护，帮您提高生活质量，早日回归社会。</li>
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
					 &nbsp; &nbsp; 造瘘是利用外科手术方式在腹壁上人为开口，并把一段肠管拉出腹腔，开口缝于腹壁用于排泄粪便或尿液。术后造瘘口的护理很重要，需要专业人员清洁操作换药，易康美辰专业护士随时为您待命。</div>
				<h1>【护理措施包括】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 1.造瘘口敷料更换，周围的皮肤护理很重要，预防皮肤感染。<br />
					 &nbsp; &nbsp; 2.教会患者自己使用造口袋。<br />
					 &nbsp; &nbsp; 3.心理支持护理，带领患者能够正确面对，早日走出心理阴影，步入社会。</div>
			</div>
			<div id="dv_2" class="dv_home">
				<h1>【护理措施介绍】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 1.预防并发症，皮肤病，造瘘口感染，小肠脱出，肠管内陷等。<br />
					 &nbsp; &nbsp; 2.定期血液检查，查看白细胞计数。<br />
					 &nbsp; &nbsp; 3.可以适量活动，饮食注意，以细软的半流食为主，适当添加膳食纤维多的食物，促进肠蠕动，有效预防肠梗阻，增加排便次数，带出体内毒素。</div>
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
