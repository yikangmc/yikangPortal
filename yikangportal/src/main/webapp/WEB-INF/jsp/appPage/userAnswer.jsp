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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/userAnwser.css">
	<title>答复贴</title>
</head>
	<body>
		<div class="main">
			<!-- 主题 -->
			<div class="bod-Title">
				<div>
					<p>
						${responseData.title }
					</p>	
					<p>
						<img style="width:60px;" src="${responseData.photoUrl }"> 
						<!-- ${postData.userName } -->
						<span class="bod-Name">${responseData.userName }</span> 

						<span class="bod-Time">${responseData.createTime }</span>
					</p>
				</div>
			</div>

			<!-- 主体 -->
			<div class="dv_body">
				<div class="bod_info">
					<c:forEach var="magData" items="${responseData.questionImages }">
						<img src="${magData.imageUrl }">
					</c:forEach>
					<br>
					${responseData.content }<a id="all" href="#">更多</a>
				</div>
				<!-- 标签 -->
				<div class="labels">
					<c:forEach items="${responseData.taglibs }" var="tags">
						<div class="bod_label">${tags.tagName }</div>
					</c:forEach>
				</div>
				
				<div class="bod_bottoms">
					<ul>
						<li style="border: 0px;">
							<img class="mag" src="<%=basePath%>img/protal/appPage/like.png"> 
							${responseData.star }</li>
						<li>
							<img class="mag" src="<%=basePath%>img/protal/appPage/commentary.png"> ${responseData.answerNum }</li>
						<li>
							<img class="mag" src="<%=basePath%>img/protal/appPage/all.png"> 更多</li>
					</ul>
				</div>
			</div>
			<!-- 评论 -->
			<div class="dv_commentary">
			<a href="#"><p class="comm_all">全部评论</p></a>

			<!-- 回复评论区 -->
			<c:forEach items="${responseData.questionAnswers }" var="answerData" >
				<div class="comm_info">
					<div>
						<img src="<%=basePath%>img/protal/appPage/picture.png">
					</div>
					<div>
						<span class="spn_name">康复师周玲</span>
						<img src="<%=basePath%>img/protal/appPage/icon1.png">
						<br />
						<span class="spn_time">30分钟前</span>
						</div>
					<div>
					${answerData.content}
					</div>
					<hr id="hrs" />
				</div>
			</c:forEach>

			<!-- 回复评论区 -->
			<!-- <div class="comm_info">
				<div>
					//头像暂却
					<img src="<%=basePath%>img/protal/appPage/picture.png">
				</div>
				<div>
					<span class="spn_name">康复师周玲</span>
					//类型暂却
					<img src="<%=basePath%>img/protal/appPage/icon1.png">
					<br />
					<span class="spn_time">30分钟前</span>
				</div>
				<div>
				出太阳了，昨天的风，让我想昨天的昨天，天空之朦胧，我的眼睛朦胧着没有人问:这是怎么了？那年冬天的雪是洁白的，( 文章阅读网：www.sanwen.net )夏天的风里没有沙尘，记忆里的池塘有嫩绿的菱角
				</div>
				<div id="triangle"></div>
				<div class="reply">
					<ul>
						<li><font>泰坦:</font>赞一个！</li>
						<li><font>艾比利:</font>天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧天空之朦胧</li>
						<li><font>巧克力:</font>呵呵..</li>
					</ul>
				</div>
				<hr id="hrs" />
			</div> -->
		</div>
	</body>
</html>