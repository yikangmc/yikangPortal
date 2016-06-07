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
							<img id="mag1" src="<%=basePath%>img/protal/appPage/activity.png">活动详情
							</li>
					</a>
					<a class="run2">
						<li id="fnt2">
							<img id="mag2" src="<%=basePath%>img/protal/appPage/chat.png">聊天互动
							</li>
					</a>
				</ul>
			</div>
			<!-- 动态条 -->
			<div id="line">&nbsp;</div>

			<!-- 主题 -->
			<div class="main_info">
				<div class="minfos">
					<p>${responsData.title }</p>
					<p>${responsData.updateTime }</p>
					<p>${responsData.mapPsitionAddress }</p>
				</div>
				<div class="minfos">
					￥ ${responsData.cost }
				</div>
			</div>

			<!-- 支持 -->
			<div class="dv_support">
				<div class="sup_font">
					获<font>3284</font>支持
				</div>
				<div class="sup_mags">
					<c:forEach items="${responsData.followUsers }" var="followUser">
						<img style="width:60px;" src="${followUser.photoUrl }">
					</c:forEach>
					<!-- 查看所有 -->
					<a><img src="<%=basePath%>img/protal/appPage/aller.png"></a>

				</div>
			</div>

			<!-- 活动主题 -->
			<div class="mainactivity">
				<p>活动介绍</p>
				<hr id="hrs" />
				<div class="mBodys">
					${responsData.content }
				</div>
			</div>

			<!-- 活动方信息 -->
			<div class="activity_info">
				<p class="ainfo_title">活动发起方</p>
				<div class="ainfo_body">
					<div class="ainfo_mags">
						<img class="mags" src="${responsData.photoUrl }">
					</div>
					<div class="ainfo_serve">
						<p id="fonts_name">${responsData.createUsername }</p>
						<p id="fonts_activity">发起活动${responsData.partakeNums }场</p>
					</div>
					<div class="ainfo_on">
						<!-- 
							[btn_attention_on] State of 关注
							[btn_attention_ck] State of 已关注
						 -->
						<div id="btns" class="btn_attention_on">关注</div>
					</div>
				</div>
			</div>
			<!-- 报名状态 -->
			<div id="btn_state" class="btn_state">报名</div>
		</div>
	</body>
	<!-- js区 -->
	<script src="<%=basePath%>js/activity.js"></script>
</html>