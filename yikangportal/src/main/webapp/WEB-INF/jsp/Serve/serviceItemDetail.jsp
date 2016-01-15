<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>服务详情</title>
    <script src="<%=basePath%>js/viewport.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/detail.css"/>
	<script type="text/javascript" src="<%=basePath%>/js/views/serve/serviceItemDetail.js"></script>
</head>
<body>
	<img src="${data.pictures[0].picUrl}" />
	
	<form id="serviceItemForm" action="<%=basePath%>appointmentOrder/toReviceInfomation" method="post">
		<input type="hidden" name="serviceItemId" 		  value="${data.serviceItemId }" />
		<div id="medicinalApparatusIdsDiv" style="display:none"></div>
	</form>
		
	<div class="dv_title">
		<div class="font_title">${data.serviceTitle }</div><div class="font_money">￥${data.price }</div>
		<img style="margin: 0 16 20 16; " src="<%=basePath%>img/protal/topborder.png">
		<div class="ser_bod">
			<img class="tm" src="<%=basePath%>img/protal/open.png">服务到家 
			&nbsp; &nbsp;
			<img class="tm" src="<%=basePath%>img/protal/shape.png">呵护备至 
			<div class="btn_porject btn_time" ><img class="tm" src="<%=basePath%>img/protal/timesblue.png">${data.serviceTime }min</div>
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
			<c:forEach items="${data.serviceIntroduces }" var="serviceIntroduce">
<%-- 				<p class="ser_text_title">● ${serviceIntroduce.title}</p> --%>
				<div class="ser_text_body">
					${serviceIntroduce.content}
				</div>
			</c:forEach>
		</div>
		
		<div id="dir2" class="dv_body" style="display: none;"> 
			<c:forEach items="${data.serviceNotes}" var="serviceNote">
<%-- 					<p class="ser_text_title">● ${serviceNote.title}</p> --%>
					<div class="ser_text_body">
						${serviceNote.content }
					</div>
			</c:forEach>
		</div>

		<div id="dir3" class="dv_body" style="display: none;">
			<div class="ser_text_body">
				<c:forEach items="${data.medicinalApparatus}" var="medicinalApparatus">
					<div class="ser_goods" onclick="serviceItemDetail.selectMedicinalApparatuId(this,${medicinalApparatus.medicinalApparatuId })">
						<img src="${medicinalApparatus.picUrl }">
						
						<p>${medicinalApparatus.maName }</p>
						<input type="hidden" name="medicinalApparatuId" value="${medicinalApparatus.medicinalApparatuId }" />
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="dv_bottom">
		<a href="tel:400-616-0909">
			<button class="btn_phone btn_bottoms" type="button">咨询我们</button>
		</a>
		<button class="btn_click btn_bottoms" onclick="serviceItemDetail.appointmentServiceItem()" type="button">立即预约</button>
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