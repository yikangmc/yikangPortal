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
				<img style=" width: 100%; height: 100%;" src="<%=basePath%>/img/ServeImg/ServiceIntroduce/9.jpg" />
			</div>
			<form action="<%=basePath%>appointmentOrder/" method="post">
				
				<input type="hidden" name="serviceItemId" value="${data.serviceItemId }" />
				
				<input type="hidden" name="medicinalApparatusIds" value="${data.serviceItemId }" />
				
			</form>
			<div class="dv_title">
				<ul>
					<li class="font-toptitle">糖尿病的护理</li><br />
					<li class="font-mony">￥300</li>
					<li class="font-bottom">专业身心护理让您轻松、愉悦、安心的控制血糖，专业指导有效预防并发症，特别是糖尿病足的发生。护理家，护您家，易康美辰护理到您家。</li>
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
					 &nbsp; &nbsp; 糖尿病是一组以高血糖为特征的代谢性疾病。高血糖则是由于胰岛素分泌缺陷或其生物作用受损，或两者兼有引起。糖尿病时长期存在的高血糖，导致各种组织，特别是眼、肾、心脏、皮肤、血管、神经的慢性损害、糖尿病足、功能障碍等。给社会和家庭带来沉重负担，严重威胁人类健康。所以早期发现糖尿病，早期治疗显得尤为重要。</div>
				<h1>【护理措施包括】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 1.糖尿病患者的健康教育。<br />
					 &nbsp; &nbsp; 2.监测血糖，定时定期为您监测血糖，并记录；观察血糖动态变化，及时发现问题，给予干预，有效达到降糖达标，预防并发症。<br />
					 &nbsp; &nbsp; 3.饮食治疗，为您制定合理的饮食，解决您饮食营养方面的烦恼。<br />
					 &nbsp; &nbsp; 4.运动治疗，带领您一起合理健身，增强体质，有效的消耗热量，控制血糖。<br />
					 &nbsp; &nbsp; 5.药物治疗，针对性的药物指导，合理用药，控制血糖。<br />
					 &nbsp; &nbsp; 6.糖尿病足预防与护理，对您糖足护理的指导，及时发现问题，干预，若您有糖足，给您换药，清创。</div>
			</div>
			<div id="dv_2" class="dv_home">
				<h1>【护理措施介绍】</h1><br /><div class="v1">
					 &nbsp; &nbsp; 1.糖尿病的药物治疗的原则，首要的是要控制血糖达标，以减少慢性并发症的出现。<br />
					 &nbsp; &nbsp; 2.然后才是药物的精细选择，减轻胰岛的负担，从而延缓胰岛功能的衰退。<br />
					 &nbsp; &nbsp; 3.要强调个体化治疗方案，由于每个患者的胰岛素敏感性和胰岛功能衰退程度和速度不同，所以患者不能根据其它患者的用药经验来自行调整自己的用药方案，而应该遵医嘱用药。<br />
					 &nbsp; &nbsp; 4.家属一定要了解血糖疾病，充分支持、鼓励、督促患者用药，锻炼控制血糖，预防并发症。</div>
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
