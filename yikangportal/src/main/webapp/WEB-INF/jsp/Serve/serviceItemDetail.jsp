﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" 			content="易康美辰,预约评估及服务" />
	<meta name="description" 		content="易康美辰,预约评估及服务" />
	<meta name="generator" 			content="易康美辰" />
	<meta name="author" 			content="易康美辰技术部" />
    <script src="<%=basePath%>js/viewport.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/detail.css">
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<title>服务详情</title>
	<style type="text/css">
		
	</style>
</head>
<body>
	<img src="<%=basePath%>img/protal/st.png">
	<div class="dv_title">
		<div class="font_title">护理家康复瘦腿</div><div class="font_money">￥188.0</div>
		<hr class="hrs">
		<div class="ser_bod">
			<img class="tm" src="<%=basePath%>img/protal/open.png">限时优惠 
			&nbsp; &nbsp;
			<img class="tm" src="<%=basePath%>img/protal/shape.png">其他赠送 
			<div class="btn_porject btn_time" ><img class="tm" src="<%=basePath%>img/protal/timesblue.png">90min</div>
		</div>
		<div class="hr_dv"></div>
		<div class="dv_bodytop">
			<div class="ser_title">
				<ul>
					<li style="width: 23%;"><a class="run1">服务介绍</a></li>
					<li style="width: 38%;"><a class="run2">注意事项</a></li>
					<li style="width: 39%;"><a class="run3">所需药品和器材</a></li>
				</ul>
			</div>
			<div id="box" class="ser_box">&nbsp;</div>
		</div>
		<div id="dir1" class="dv_body"> 
			<p class="ser_text_title">● 病理与服务介绍</p>
			<div class="ser_text_body">
				病历，要简明扼要，患者的姓名、性别、年龄、职业、籍贯、工作单位或住址，主诉、现病史、既往史、各种阳性和阴性体征、诊断或印象及治疗处理意见等，均记载于病历上，由医师签全名。记录一律用钢笔（蓝或黑）书写，字迹清楚、用字规范、词句通顺、标点正确、书面整洁。如有药物过敏，须用红笔标明。病历不得涂改、补填、剪贴、医生应签全名。
			</div>
		</div>
		
		<div id="dir2" class="dv_body" style="display: none;"> 
			<p class="ser_text_title">● 2222</p>
			<div class="ser_text_body">
				病历，要简明扼要，患者的姓名、性别、年龄、职业、籍贯、工作单位或住址，主诉、现病史、既往史、各种阳性和阴性体征、诊断或印象及治疗处理意见等，均记载于病历上，由医师签全名。记录一律用钢笔（蓝或黑）书写，字迹清楚、用字规范、词句通顺、标点正确、书面整洁。如有药物过敏，须用红笔标明。病历不得涂改、补填、剪贴、医生应签全名。
			</div>
		</div>

		<div id="dir3" class="dv_body" style="display: none;"> 
			<p class="ser_text_title">● 3333</p>
			<div class="ser_text_body">
				病历，要简明扼要，患者的姓名、性别、年龄、职业、籍贯、工作单位或住址，主诉、现病史、既往史、各种阳性和阴性体征、诊断或印象及治疗处理意见等，均记载于病历上，由医师签全名。记录一律用钢笔（蓝或黑）书写，字迹清楚、用字规范、词句通顺、标点正确、书面整洁。如有药物过敏，须用红笔标明。病历不得涂改、补填、剪贴、医生应签全名。
			</div>
		</div>
		<div class="dv_bottom">
			<button class="btn_phone btn_bottoms" href="tel:4006160909" type="button">咨询我们</button>
			<button class="btn_click btn_bottoms" href="tel:4006160909" type="button">立即预约</button>
		</div>
	</div>




	<script type="text/javascript">
		$(".run1").click(function(){
		  	$("#box").animate({left:"18px",width:"120px"});
		  	$("#dir1").css({"display":"block"});
		  	$("#dir2").css({"display":"none"});
		  	$("#dir3").css({"display":"none"});
		});

		$(".run2").click(function(){
		  	$("#box").animate({left:"208px",width:"128px"});
		  	$("#dir2").css({"display":"block"});
		  	$("#dir1").css({"display":"none"});
		  	$("#dir3").css({"display":"none"});
		});

		$(".run3").click(function(){
		  	$("#box").animate({left:"405px",width:"200px"});
		  	$("#dir3").css({"display":"block"});
		  	$("#dir1").css({"display":"none"});
		  	$("#dir2").css({"display":"none"});
		});
	</script>
</body>
</html>