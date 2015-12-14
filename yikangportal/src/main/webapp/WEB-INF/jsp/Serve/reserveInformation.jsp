<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="易康美辰,预约评估及服务" />
<meta name="description" content="易康美辰,预约评估及服务" />
<meta name="generator" content="易康美辰" />
<meta name="author" content="易康美辰技术部" />

<title>预约项目--填写个人信息</title>

<style type="text/css">
html, body {
	height: 100%;
	width: 100%;
	font: "Microsoft YaHei";
}

.dv_toptitle {
	width: 100%;
	height: 70px;
	background: #000;
	text-align: center;
	line-height: 70px;
	color: #FFF;
	font-size: 28px;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: 400;
}

.dv_body {
	width: 90%;
	height: 100%;
	margin: 0 auto;
	margin-top: 30px;
	padding: 10px;
}

.dv_body_title {
	border-radius: 8px 8px 8px 8px;
	width: 100%;
	height: 70px;
	background: #A2E2F2;
	line-height: 70px;
	padding-left: 30px;
	font-size: 20px;
}

.btn_txt {
	filter: alpha(opacity = 50);
	-moz-opacity: 0.5;
	-khtml-opacity: 0.5;
	opacity: 0.5;
}

.input {
	padding: 10px;
	width: 100%;
	height: 70px;
	margin-top: 10px;
	margin-bottom: 20px;
	border: 1px solid #3682E7;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
}

.dv_body_text {
	font-size: 28px;
	font-family: Verdana, Geneva, sans-serif;
}

.selectpicker {
	border-radius: 7px;
	width: 80px;
	height: 35px;
	font-size: 24px;
}
</style>

<script type="text/javascript" src="<%=basePath%>/js/views/serve/serviceItemDetail.js"></script>

</head>

<body>
	<div class="dv_toptitle">护龄家</div>
	<div class="dv_body">
		<div class="dv_body_title">
			为谁做：
			<div class="btn-group btn_txt">
				<select class="selectpicker">
					<option value="mather">母亲</option>
					<c:forEach items="${appellations }" var="appellation">
						<option value="${ appellation.dicCode}">${appellation.dicName}</option>
					</c:forEach>
				</select>
			</div>
			&nbsp; 他/她的年龄：
			<div class="btn-group btn_txt">
				<select name="timeBucket" class="selectpicker" style="width: 102px;">
					<c:forEach items="${ageBrackets}" var="ageBracket">
						<option value="${ageBracket.dicCode }">${ageBracket.dicName }</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div style="margin: 0 auto;" class="dv_body_text">
			<p style="height: 10px;"></p>
			他/她的住址： <input name="address" style="font-size: 27px; height: 70px;"
				type="text" class="col-md-12 col-sm-12 col-xs-12 input" />
			<p style="height: 10px;"></p>
			他/她的联系方式： <input name="mobileNumber"
				style="font-size: 27px; height: 50px;" type="text"
				class="col-md-12 col-sm-12 col-xs-12 input" />
			<p style="height: 10px;"></p>
			联系人姓名： <input name="linkUserName"
				style="font-size: 27px; height: 50px;" type="text"
				class="col-md-12 col-sm-12 col-xs-12 input" />
			<p style="height: 10px;"></p>
			预约上门评估时间： <input name="appointmentTime"
				style="font-size: 27px; height: 50px;" type="text"
				class="col-md-12 col-sm-12 col-xs-12 input"
				onclick="window.location.href = 'AppointmentTime'" />
			<button id="input_heightfour"
				style="background: #F2A71C; font-size: 27px; height: 90px; color: #FFF;"
				type="button" class="btn btn-lg col-md-12 col-sm-12 col-xs-12">马上预约</button>
		</div>
	</div>
	<script type="text/javascript">

	$(document).ready(function(){
		var width = $(window).width();
		var heigth = $(window).height();
		var infoanimateLeft = parseInt(screen.height); // 获得当前分辨率
		var bigimg = document.getElementById("#midtopimg");
		if(heigth >= width){}
	});
	
	var $$ = function (id) { 
		return document.getElementById(id); 
	} 
	
	window.onload = function () { 
		var btnSelect = $$("btn_select"); 
		var curSelect = btnSelect.getElementsByTagName("span")[0]; 
		var oSelect = btnSelect.getElementsByTagName("ul")[0]; 
		var aOption = btnSelect.getElementsByTagName("li"); 
		oSelect.onchange = function () { 
			var text=oSelect.options[oSelect.selectedIndex].text; 
			curSelect.innerHTML = text; 
		} 
	} 
	
     window.onload=function(){
     	$('.selectpicker').selectpicker();
     };
</script>
</body>
</html>
