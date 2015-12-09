<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<style type="text/css">
	html,body {
		background: #f7f7f7;
		font-family: "Microsoft YaHei";
		width: 100%;
	}
	#dv_two {
		width: 100%;
		margin: 0 auto;
		position: absolute;
		text-align: center;
	}
	.bodys {
		margin-top: 40px;
		width: 100%;
		text-align: center;
	}
	#bd_title {
		color: #019ffb;
		font-size: 44px;
	}
	.bd_title_info{
		font-size: 30px;
		margin: 28px 60px 40px 60px;
	}
	.ipt_styletwo {
		border: 0px;
		width: 50%;
		height: 90px;
		font-size: 36px;
		float: left;
		color: #fff;
	}
</style>
</head>

	<body>

		<div>
			<img style="width: 100%;" src="<%=basePath %>img/ServeImg/ServePrecept/banner.png">
		</div>
		<div id="dv_two">
			<div class="bodys">
				<p id="bd_title">
					不出户，给予您更好的康复服务
				</p>
				<p class="bd_title_info">
					恭喜您！您已获得护理家为您提供的一次居家护理方案定制服务
				</p>
			</div>
			<div class="bodys_two">
				<p style="color: #fe9941; font-size: 38px;">${user.loginName }</p>
				<p style="color: #fe9941; font-size: 34px;">
					<font color="000">医生随诊码:</font>
					<font color="fe9941">${user.invitationCode }</span><br />
					<font color="000">还差下一步</font><br>
					<img src="<%=basePath %>img/ServeImg/ServePrecept/erweima.png">
				</p>
			</div>
			<div>
				<button style=" background: #f46151;" class="ipt_styletwo">现在就要预约</button>
				<button style=" background: #66c5f1;" class="ipt_styletwo">了解护理家</button>
			</div>
		</div>
	</body>
</html>
		