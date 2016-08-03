<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script src="<%=basePath%>js/viewport750.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/protal/appPage/appWholecs.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/protal/appPage/majorsAnswer.css" />
<title>专业文章 ${formPosts.title }</title>
</head>
<body>
	<div class="main">
		<div class="bod-Title">
			<div>
				<p>${formPosts.title }</p>
				<p>
					<img src="${formPosts.photoUrl }" /> <span class="bod-Name">
						${formPosts.userName } </span> <img
						src="<%=basePath%>img/protal/appPage/icon1.png" /> <span
						class="bod-Time"><fmt:formatDate
							value="${formPosts.createTime }" type="both" /></span>
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
						<img class="mag" src="<%=basePath%>img/protal/appPage/like.png" />${formPosts.stars }
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
					<img src="${starUser.photoUrl }" />
				</c:forEach>
			</div>
		</div>

		<!-- 评论 -->
		<div class="dv_commentary">
			<a href="#"><p class="comm_all">全部评论</p></a>
			<!-- 回复评论区 -->

			<div class="comm_info">
				<c:forEach items="${formPosts.forumPostsAnswers }" var="forumPostAnswers">
					<div>
						<img src="${forumPostAnswers.createUserPhotoUrl }" />
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
				</c:forEach>

			</div>


			<!-- 回复评论区 -->
<!-- 			<div class="comm_info"> -->
<!-- 				<div> -->
<%-- 					<img src="<%=basePath%>img/protal/appPage/picture.png" /> --%>
<!-- 				</div> -->
<!-- 				<div> -->
<!-- 					<span class="spn_name">康复师周玲</span> <img -->
<%-- 						src="<%=basePath%>img/protal/appPage/icon1.png" /> <br /> <span --%>
<!-- 						class="spn_time">30分钟前</span> -->
<!-- 				</div> -->
<!-- 				<div>出太阳了，昨天的风，让我想昨天的昨天，天空之朦胧，我的眼睛朦胧着没有人问:这是怎么了？那年冬天的雪是洁白的，( -->
<!-- 					文章阅读网：www.sanwen.net )夏天的风里没有沙尘，记忆里的池塘有嫩绿的菱角</div> -->
<!-- 				<div id="triangle"></div> -->
<!-- 				<div class="reply"> -->
<!-- 					<ul> -->
<!-- 						<li><font>泰坦:</font>赞一个！</li> -->
<!-- 						<li><font>艾比利:</font>天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧</li> -->
<!-- 						<li><font>巧克力:</font>呵呵..</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 				<hr id="hrs" /> -->
<!-- 			</div> -->
		</div>
	</div>
</body>
<!-- js区 -->
<script type="text/javascript" src="<%=basePath%>js/majorAnswer.js"></script>
</html>