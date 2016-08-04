<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script src="<%=basePath%>js/viewport750.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/appWholecs.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/majorsAnswer.css" />
<!-- Bootstrap -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!-- 专业文章 -->
<title>佳佳康复-${formPosts.title }</title>
</head>
<body>
	<div class="main">
		<div class="bod-Title">
			<div>
				<p>${formPosts.title }</p>
				<p>
					<img width="54" height="54" style="border-radius: 50px;" src="${formPosts.photoUrl }" /> 
					<span class="bod-Name">
						${formPosts.userName } 
					</span> 
					<img src="<%=basePath%>img/protal/appPage/icon1.png" /> 
					<span class="bod-Time">
						<fmt:formatDate value="${formPosts.createTime }" type="both" />
					</span>
				</p>
			</div>
			<div>
				<div id="btn-Collect" class="btn-Collect">收藏</div>
			</div>
		</div>

		<!-- 正文 -->
		<div class="mainactivity">
			<div class="mBodys">${formPosts.forumPostHtmlDetailContent }</div>

			<!-- 标签 -->
			<div class="labels">
				<c:forEach items="${formPosts.taglibs }" var="taglib">
					<div class="bod_label">${taglib.tagName }</div>
				</c:forEach>
			</div>

			<div class="bod_bottoms">
				<ul>
					<li style="border: 0px;">
						<img class="mag" src="<%=basePath%>img/protal/appPage/like.png" /> ${formPosts.stars }
					</li>
					<li>
						<img class="mag" src="<%=basePath%>img/protal/appPage/commentary.png" /> ${formPosts.answersNums }
					</li>
					<li><img class="mag"
						src="<%=basePath%>img/protal/appPage/all.png" /> 更多</li>
				</ul>
			</div>
		</div>
		<!-- 支持 -->
		<div class="dv_support">
			<div class="sup_font">
				获<font>${formPosts.stars }</font>支持
			</div>
			<div class="sup_mags">
				<c:forEach items="${formPosts.formPostsStarLists }" var="starUser">
					<img width="54" height="54" style="border-radius: 50px;" style="width: 50px; height: 50px;" src="${starUser.photoUrl }" />
				</c:forEach>
			</div>
		</div>

		<!-- 评论 -->
		<div class="dv_commentary">
			<a href="#"><p class="comm_all">全部评论</p></a>
			<!-- 回复评论区 -->
			<c:forEach items="${formPosts.forumPostsAnswers }" var="forumPostAnswers">
				<div class="comm_info">
					<div>
						<img width="54" height="54" style="border-radius: 50px;" src="${forumPostAnswers.createUserPhotoUrl }" />
					</div>
					<div>
						<span class="spn_name">${forumPostAnswers.createUserName }</span> 
						<img src="<%=basePath%>img/protal/appPage/icon1.png" /> <br/> 
						<span class="spn_time">30分钟前</span>
					</div>
					<div>
						${forumPostAnswers.content}
					</div>
					<hr id="hrs" />
				</div>
			</c:forEach>
		</div>
	</div>
</body>
<!-- js区 -->
<script type="text/javascript" src="<%=basePath%>js/majorAnswer.js"></script>
</html>