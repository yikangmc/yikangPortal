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
	<link rel="stylesheet" type="text/css"href="<%=basePath%>css/protal/appPage/textEditor.css">
	
	<!-- <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/**.css"> -->
	<title>初始页</title>
</head>
<body>
<!--<input type="file" accept="image/*" capture="camera" /> 部分手机无法正确限制图片格式 -->
<div class="main">
	<div id="destination" contenteditable="true">

	</div>

	<div class="btm-fixed">
		<div class="fileInputContainer" 
				style="background: url(<%=basePath%>img/protal/appPage/all_mags.png) 
					no-repeat; background-position: center; ">
			<!--  id="imgUpload" -->
			<input type="file" class="fileInput" name="imgUpload" 
					draggable="true" capture="camera" single />
		</div
	</div>
</div>

<footer>
    
</footer>
<script src="<%=basePath%>js/textEditor/main.css"></script>
<script src="<%=basePath%>js/textEditor/mobileFix.mini.js?v=ad62f13"></script>
<script src="<%=basePath%>js/textEditor/exif.js?v=dd609b9"></script>
<script src="<%=basePath%>js/textEditor/lrz.js?v=3d33fcf"></script>
<script src="<%=basePath%>js/textEditor/index.js?v=c970150"></script>
</body>
</html>