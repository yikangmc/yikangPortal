<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
 	<meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  	<script src="<%=basePath%>js/viewport750.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
	<title>初始页</title>
	<style type="text/css">
	body,html{
		width: 100%;
		height: 100%;
	}
	.content{
		width: 750px;
		height: 1334px;
		margin: 0 auto;
		background: url('<%=basePath%>img/protal/appPage/Invitation2.jpg') no-repeat;
		background-size: 100%;
		position: relative;
	}
	.question-ato{
		display: block;
		width: 170px;
		height: 170px;
		position: absolute;
		left: 18%;
		bottom: 8%;
		border-radius: 50%;
	}

	#models {
		position: fixed; top: 0px;
		width: 100%;
		height: 100%;
		background: #000;
		opacity: .7;
	}
	#models img { margin-top: 20px; }
	</style>
</head>
	<body>
		<div class="content">
			<a class="question-ato">
				
			</a>
		</div>
	</body>

	<script type="text/javascript">
		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {

	        $('a').attr("href","https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8");
	        $('a').click(function (){
	        	iosHttps()
	        	$('#models').click(function (){$(this).remove()})
	        })

	    } else if (/(Android)/i.test(navigator.userAgent)) {

	        $('a').attr("href","http://mobile.baidu.com/item?docid=9736197&source=s1001");

	    } else if (/(Windows)/i.test(navigator.userAgent)) {

	        $('a').attr("href","http://jjkangfu.cn/index/productFooter");

	    } else {

	        $('a').attr("href","http://jjkangfu.cn/index/productFooter");

	    }

	    function iosHttps() {
	    	$('body').append(
	    		"<div id='models'>"
	    		+"<img src='<%=basePath%>img/protal/appPage/activity/windowPrompt.png'>"
	    		+"</div>");
	    }
	</script>
</html>
