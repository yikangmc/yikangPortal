<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="<%=basePath%>js/viewport750.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/appWholecs.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/activity.css">
	<title>活动页</title>
</head>
	<body>
		<div class="main">
			<div class="bnrmag"><img src="<%=basePath%>img/protal/appPage/main.png"></div>

			<div class="activity">
				<ul>
					<a class="run1">
						<li id="fnt1">
							<img id="mag1" src="<%=basePath%>img/protal/appPage/activity.png">活动详情</li>
					</a>
					<a class="run2">
						<li id="fnt2">
							<img id="mag2" src="<%=basePath%>img/protal/appPage/chat.png">聊天互动</li>
					</a>
				</ul>
			</div>
			<!-- 动态条 -->
			<div id="line">&nbsp;</div>

			<!-- 主题 -->
			<div class="main_info">
				<div class="minfos">
					<p>骨盆矫正公开课第一期开课啦</p>
					<p>04月12日 星期4 12:30</p>
					<p>北京市朝阳区朝外大街26好朝外MEN写字中心B座2505</p>
				</div>
				<div class="minfos">
					￥10
				</div>
			</div>

			<!-- 支持 -->
			<div class="dv_support">
				<div class="sup_font">
					获<font>3284</font>支持
				</div>
				<div class="sup_mags">
					<img src="<%=basePath%>img/protal/appPage/picture.png">
					<img src="<%=basePath%>img/protal/appPage/picture.png">
					<img src="<%=basePath%>img/protal/appPage/picture.png">
					<img src="<%=basePath%>img/protal/appPage/picture.png">
					<img src="<%=basePath%>img/protal/appPage/picture.png">
					<img src="<%=basePath%>img/protal/appPage/picture.png">

					<!-- 查看所有 -->
					<a><img src="<%=basePath%>img/protal/appPage/aller.png"></a>

				</div>
			</div>

			<!-- 活动主题 -->
			<div class="mainactivity">
				<p>活动介绍</p>
				<hr id="hrs" />
				<div class="mbodys">
					清晨，不知何处的鸟儿早已在树上，清晨，不知何处的鸟儿早已在树上，清晨，不知何处的鸟儿早已在树上，清晨，不知何处的鸟儿早已在树上，清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上
					<img src="<%=basePath%>img/protal/appPage/testbanner.png">
					清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上清晨，不知何处的鸟儿早已在树上
				</div>

				<!-- 标签 -->
				<div class="labels">
					<div class="bod_label">瘦身</div>
					<div class="bod_label">瘦身</div>
					<div class="bod_label">瘦身</div>
					<div class="bod_label">瘦身</div>
				</div>

				<div class="bod_bottoms">
					<ul>
						<li style="border: 0px;">
							<img class="mag" src="<%=basePath%>img/protal/appPage/like.png"> 3284</li>
						<li>
							<img class="mag" src="<%=basePath%>img/protal/appPage/commentary.png"> 183</li>
						<li>
							<img class="mag" src="<%=basePath%>img/protal/appPage/all.png"> 更多</li>
					</ul>
				</div>
			</div>

		</div>

		<script type="text/javascript">
			$(".run1").click(function(){
			  	$("#line").animate(	{"margin-left":"60px"})
			  	$("#fnt1").css({"color":"#0faadd"})
			  	$("#fnt2").css({"color":"#333"})
			});
			$(".run2").click(function(){
			  	$("#line").animate(	{"margin-left":"434px"})
			  	$("#fnt2").css({"color":"#0faadd"})
			  	$("#fnt1").css({"color":"#333"})
			});
		</script>
	</body>
</html>