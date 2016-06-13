<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/appWholecs.css">
<link rel="stylesheet" type="text/css"href="<%=basePath%>css/protal/appPage/textEditor.css">
<script src="<%=basePath%>js/textEditor/main.css"></script>
<script src="<%=basePath%>js/viewport750.js"></script>
<title>富文本编辑器</title>
<style type="text/css">
#destination {
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(true,
		sizingMethod=scale);
}
</style>
<script src="<%=basePath%>js/viewport750.js"></script>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
</head>

<body>
	<div class="main">
		<div id="destination" contenteditable="true">

		</div>

		<div class="btm-fixed">
			<div class="fileInputContainer" 
					style="background: url(<%=basePath%>img/protal/appPage/all_mags.png) 
						no-repeat; background-position: center; ">
				<input type="file" id="imgUpload" class="fileInput" 
						name="imgUpload" draggable="true" single />
			</div>
		</div>
	</div>
</body>
</html>