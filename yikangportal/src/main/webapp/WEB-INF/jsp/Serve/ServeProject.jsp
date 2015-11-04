<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
<title>无标题文档</title>
</head>
	<body> 
		<div class="dv_body">
			<div class="dv_topimg">
			</div>
			<div class="dv_title"> 
				<ul>
					<li class="font-toptitle">压疮换药与护理</li><br />
					<li class="font-mony">￥300</li>
					<li class="font-bottom">医学压疮护理,减轻痛苦,防止感染,促进愈合</li>
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
				<h1>【病理与服务介绍】</h1><br /><div class="v1">&nbsp;&nbsp;压疮是由于压迫造成的骨隆突部位皮下组织的损伤。是长期卧床，坐轮椅者及老年人的常见病症。老年人中褥疮者的死亡率是无褥疮者的四倍，褥疮为慢性伤口，治疗时间长，难度大，花费多。不良的护理极易引发感染和其他并发症，专业的护理和与预防是急需的。</div>
				<h1>【护理措施包括】</h1><br /><div class="v1">&nbsp;&nbsp;1.全身加强营养和减压措施的落实。<br />&nbsp;&nbsp;2.压疮局部：红色伤口采取专业保护措施，用生理盐水清理伤口，使用湿性愈合敷料用专业的手法覆盖包扎，使用上帝褥疮护理膏，促进自愈。黄色伤口使用自溶清创方法无创清除腐肉组织，保持伤口洁净，再上海移动上帝褥疮护理膏调理伤口刺激肉苗生长，促进愈合。黑色伤口可先使用伤迪如疮护理膏三，再推荐进行手术清创，带坏死组织去除干净后，继续涂抹伤迪褥疮护理膏，并使用专业敷料包扎，刺激其生长。</div>
				<div class="selectService">
					<button id="btn_1" class="btn_one" onclick="onNew()"><div style="margin-top: -15px;">预约该项目</div></button>
				</div>
			</div>

			<div id="dv_2" class="dv_home">
				<h1>【压疮换药与护理的注意事项】</h1><br /><div class="v1">&nbsp;&nbsp;1.观察患者不同的卧位观察骨突出和受压部分，皮肤营养状况（有弹性，颜色，温度，感觉），活动能力（有无肢体活动障碍，意识状态），全身状态（高热，消瘦或肥胖，昏迷或躁动，疼痛，年老体弱，大小便失禁，水肿等高危因素），压疮判断（淤血红润期，炎症浸润期，溃疡期）。<br />&nbsp;&nbsp;2.减少局部受压：对活动能力受限的患者，定时被动变换体位，每两小时一次；受压皮肤在解除压力30分钟后，压红不消退者，应该缩短翻身时间；长期卧床患者可以使用充气气垫床或者采取局部减压措施；骨突处皮肤使用透明贴或者减压贴予以局部保护。<br />&nbsp;&nbsp;3.皮肤保护：温水擦洗皮肤，使皮肤清洁无汗液；肛周涂保护膜，防止大便刺激；对大小便失禁者及时清洁，保持局部清洁干燥。</div>
				<div class="selectService">
					<button id="btn_1" class="btn_one" onclick="onNew()"><div style="margin-top: -15px;">预约该项目</div></button>
				</div>
			</div>
			<div id="dv_3" class="dv_home">
				<h1>【所需药品和器材】</h1><br />
				<div class="v1">
					<div style="height: 150px;">
						<div class="block" id="font_selete"></div>
						<div class="block" style="width:125px;">
							<img style="width: 125px; height: 125px;" src="<%=basePath%>/img/ServeImg/zt.png">
						</div>
						<div class="block" id="font_titleone" style="padding-left: 30px;">1.针头</div>
						<button id="btn_fonts" onclick="myFunction()">点击购买</button>
					</div>
						<br />
					<div style="height: 150px;">
						<div class="block" id="font_selete1"></div>
						<div class="block" style="width:125px;">
							<img style="width: 125px; height: 125px;" src="<%=basePath%>/img/ServeImg/fl.png">
						</div>
						<div class="block" id="font_titleone1" style="padding-left: 30px;">1.针头</div>
						<button id="btn_fonts1" onclick="myFunction2()">点击购买</button>
					</div>

				</div>
				<div class="selectService">
					<button id="btn_1" class="btn_one" onclick="onNew()"><div style="margin-top: -15px;">预约该项目</div></button>
				</div>
			</div>
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
			width: 280px; 
			height: 70px; 
			border-radius: 10px; 
			border: 0px; 
			background: #2d86ff; 
			color: #fff; 
			font-size: 28px; 
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
			margin-top: 30px;
		}
		#btn_fonts1 {
			width: 150px;
			height: 60px;
			border-radius: 7px;
			font-size: 32px;
			background:  #2d86ff;
			border: 0px;
			margin-top: 30px;
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
			height: 300px;
			background: url(<%=basePath%>/img/ServeImg/ServiceIntroduce/1.jpg) no-repeat;
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
			margin-left: 170px;
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
			font-size: 18px;
			font-weight: 500;
			width: 700px;
			margin: 0 auto;
			background: #666;
		}
		.selectService {
			text-align: center;
			line-height: 100px;
			padding-bottom: 60px;
			margin-top: 100px;
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