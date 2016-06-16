<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/appWholecs.css">
<link rel="stylesheet" type="text/css"href="<%=basePath%>css/protal/appPage/textEditorOther.css">
<script src="<%=basePath%>js/textEditor/main.js"></script>
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
		<p class="ipt-title">
			<input class="ipt-value" type="text" placeholder="填写专业内容标题（必填）" />
		</p>
		<div id="destination" contenteditable="true">
			
		</div>

		<div class="btm-fixed">
			<p>为专业内容添加标签</p>
			<div id="lables">
				<div class="labs">
					运动康复
				</div>
				<div class="labs">
					治疗
				</div>
			</div>
			<a id="all">+</a>
			<p>上传一张标题图</p>
			<div>
				<input type="file" id="imgUpload" class="fileInput" 
						name="imgUpload" />
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var Value = "康复",
		 	Label = "<div class='labs'>"
					+	Value	+
					"</div>";
		$('#all').click(function(){
			var index = $('.labs').size();

			if (index <= 3) {
				$('#lables').append(Label); } else { alert("最多只能4个标签哟~"); 
			}

		});
	</script>
</body>
</html>