<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>了解护理家</title>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<style type="text/css">

	html,body {
		font-family: "Microsoft YaHei";
	}
	.dv_1 {
		width: 80%;
		margin: 0 auto;
		text-align: center;
	}
	.dv_2 {
		width: 100%;
		text-align: center;
	}
	.infos {
		padding: 20px 0px 20px 0px;
	}
	.fonts {
		font-size: 14px;
		color: #999393;
		margin: 40px 0px 20px 0px;
	}
	.ipt_styletwo {
		border: 0px;
		width: 50%;
		height: 50px;
		font-size: 18px;
		float: left;
		color: #fff;
	}
	.dv_bottom {
		width: 100%;
		position: fixed;
		bottom: 0px;
	}
</style>
</head>
	<body>
		<div>
			<img style="width: 100%;" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\banner.png"/>
		</div>
		<div class="dv_1">
			<div class="infos">
				<h3>拒绝不专业的“业余护工”</h3>
				<div class="fonts">护理家的医护团队是在医院中从业多年的护士,并在威宁提供护理钱接收了严格的技能培训和病理知识指导,更好地保障您的护理效果</div>
				<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\1.png"/>
			</div>
			<div class="infos">
				<h3>不一样的健康评估体系</h3>
				<div class="fonts">护理家的抗腐蚀会定期跟您的护理进程,进行阶段性健康评估,及时在您的护理服务期结束后,我们的医护团队任会不定期进行随访给您多一份安心</div>
				<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\2.png"/>
			</div>
			<div class="infos">
				<h3>没有昂贵的住院费用</h3>
				<div class="fonts">护理家的医护服务可在家里进行,无需住院,让您节省一大笔住院费用,且一样能享受到我们专业医护团队的日常康复服务</div>
				<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\3.png"/>
			</div>
		<h3>预约护理家，您会得到:</h3>
		</div>
		<div class="dv_2" style="margin-bottom: 40px;">
			<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\f1.png"/><br />
			<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\f2.png"/><br />
			<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\f3.png"/><br />
			<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\f4.png"/><br />
			<img style="width:100%" src="<%=basePath %>\img\ServeImg\ServePrecept\InDetail\f5.png"/><br />
		</div>
		<div class="dv_bottom">
			<a href="<%=basePath %>invite/inviteRegister${invitationCode ne null ? "?invitationCode=" :"" }${invitationCode}"><button style=" background: #f46151;" type="button" class="ipt_styletwo">预约护理家服务</button></a>
			<a href="tel:400-616-0909"><button style=" background: #66c5f1;" type="button" class="ipt_styletwo">400-616-0909</button></a>
		</div>
	</body>
</html>