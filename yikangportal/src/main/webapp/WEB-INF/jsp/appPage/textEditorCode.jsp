<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<script src="<%=basePath%>js/viewport.js"></script>
	<script src="<%=basePath%>js/jquery.qrcode.min.js"></script>
	<script src="<%=basePath%>js/views/appPage/textEditroCode.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/EditorCode.css"/>
	<title>佳佳康复-居家型术后及慢性病康复护理专家</title>
	<style type="text/css">
		#codeico{
			position: relative;
			width:55px; 
			height:55px;
			top: 132px;
			left: 113px;
			background:url(<%=basePath%>img/common/YK61.png) no-repeat;
			background-size: 100%;
			background-color: #fff;
			border-radius: 7px;
			border: 1px #999 solid;
		}
	</style>
</head>
	<body>
		<!-- 导航栏 -->
		<div class="nav">
			<div class="nav-body">
				<a class="Nbody-left">
					<img src="<%=basePath%>img/index/logo.png"/>
				</a>
				<!-- <ul>
					<li>首页</li>
					<li>佳佳产品</li>
					<li>服务</li>
					<li>加入我们</li>
				</ul> -->
			</div>
		</div>
		<div id="content-main" class="content-main" style="background: url('<%=basePath%>img/protal/appPage/background-mag.png') no-repeat; background-position: center;">
			<div class="qrcode">
				<div id="code">
					<div id="codeico"></div>
				</div>
				<h2>扫描二维码登录佳佳康复网页版</h2>
				<p>佳佳康复的专业人员可通过扫描该二维码在PC端编辑和发布活动</p>
			</div>
		</div>
	</body>
	<script type="text/javascript">	
		var H = document.body.clientHeight;
		document.getElementById('content-main').style.height=H-80+'px';

		var randomData = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

		window.onload = function(){
			var unique = "yikang-";
			for (var i=0; i<=26; i++) {
				var nIndex = Math.floor(Math.random()*36);
				unique += randomData[nIndex];
				if (i == 6 || i == 12)
					unique += "-";
			}

			$("#code").qrcode({
			    width: 200,
			    height:200,
			    text: '${uniqueCode == null ?"jjkangfu.cn":uniqueCode}'
			}); 

			console.log(unique);
		}
	</script>
</html>