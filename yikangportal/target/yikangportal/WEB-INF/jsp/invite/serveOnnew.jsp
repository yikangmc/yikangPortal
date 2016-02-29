<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="<%=basePath%>js/viewport.js"></script>
<title>免费服务，轻松获取</title>

<script type="text/javascript">
	// var width = $(window).width();
	// var height = $(window).height();
	// if (width < 370) {
	// 	$("head").append('<meta name="viewport"	content="width=device-width,minimum-scale=0.7,maximum-scale=0.7,user-scalable=no" />');
	// }
</script>
<style type="text/css">

	html,body {
		margin: 0 auto;
		width: 640px;
		font-family: "Microsoft YaHei";
	}
	#dv_two {
		width: 640px;
		margin: 0 auto;
		position: absolute;
		text-align: center;
	}
	.bodys {
		width: 640px;
		margin-top: 40px;
		text-align: center;
	}
	#bd_title {
		color: #019ffb;
		font-size: 22px;
	}
	.bd_title_info{
		font-size: 16px;
		margin: 28px 60px 40px 60px;
	}
	.ipt_styletwo {
		width: 640px;
		border: 0px;
		width: 50%;
		height: 50px;
		font-size: 22px;
		float: left;
		color: #fff;
	}
	.ft {
		width: 640px;
		position: relative;
		top: -238;
		left: 382;
		width: 130px;
		font-size: 16px;
		font-weight: 900;
		color: #808f94;
	}
</style>
</head>

	<body>

		<div>
			<img style="width: 100%;" src="<%=basePath %>/img/ServeImg/ServePrecept/banner.jpg"/>
			<div class="ft">
				Hi，我是${user.userName }
			</div>
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
				<p style="color: #fe9941; font-size: 30px;">${user.userName }</p>
				<p style="color: #fe9941; font-size: 28px;">
					<c:if test="${null ne user}">
						<font color="000">医生随诊码:</font>
						<font color="fe9941">${user.invitationCode }</font><br />
					</c:if>
					<font color="000">还差下一步</font><br/>
					<img src="<%=basePath %>img/ServeImg/ServePrecept/erweima.png"/>
				</p>
			</div>
			<div style="width: 640px;">
				<a href="<%=basePath %>invite/inviteRegister${user.invitationCode ne null ? "?invitationCode=" :"" }${user.invitationCode}"><button style=" background: #f46151;" type="button" class="ipt_styletwo">现在就要预约</button></a>
				<a href="<%=basePath %>invite/knowhulingjia" style=" font-size: 26px; color: #019ffb;" href="#"><button style=" background: #66c5f1;" type="button" class="ipt_styletwo">了解护理家</button></a>
			</div>
		</div>
	</body>
</html>
		