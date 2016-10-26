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
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!-- 专业文章 -->
<title>佳佳康复-${formPosts.title }</title>
<style type="text/css">
	body { background-color: #f5f6f7; }
	#right-all {
		float: right;
		margin: 30 20 0 0;
	}
	#models {
		position: absolute; top: 0px; left: 0px;
		z-index: 999;
		width: 100%; height: 100%;
		background-color: #000; opacity: .8;
	}
	#models img {
		margin: 20 auto;
		margin-top: 40px;
	}
</style>
</head>
<body>
	<div class="main">
		<div class="bod-Title">
			<div><div id="btn-Collect" class="btn-Collect">收藏</div>
				<p>${formPosts.title }</p>
				<p>
					<img width="66" height="66" style="border-radius: 50px;" src="${formPosts.photoUrl }" /> 
					<span class="bod-Name">
						${formPosts.userName } 
					</span> 
					<img src="<%=basePath%>img/protal/appPage/icon1.png" /> 
					<span class="bod-Time">
						<fmt:formatDate value="${formPosts.createTime }" type="both" />
					</span>
				</p>
			</div>
		</div>

		<!-- 正文 -->
		<div class="mainactivity">
			<div style="font-size: 24px;" class="mBodys">${formPosts.forumPostHtmlDetailContent }</div>

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
					<li><img class="mag" src="<%=basePath%>img/protal/appPage/all.png" /> 更多</li>
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
					<c:choose>
					   <c:when test="${ empty starUser.photoUrl }">
					   		<img 	width="54" height="54" style="border-radius: 50px;" 
							 		src="<%=basePath%>img/protal/appPage/user.png" />
					   </c:when>  
					   <c:otherwise>
							<img 	width="54" height="54" style="border-radius: 50px;" 
									src="${starUser.photoUrl }" />
					   </c:otherwise>  
					</c:choose> 
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
						<c:choose>
						   <c:when test="${ empty forumPostAnswers.createUserPhotoUrl }">
						   		<img 	width="66" height="66" style="border-radius: 50px;" 
								 		src="<%=basePath%>img/protal/appPage/user.png" />
						   </c:when>  
						     
						   <c:otherwise>
								<img 	width="66" height="66" style="border-radius: 50px;" 
										src="${forumPostAnswers.createUserPhotoUrl }" />
						   </c:otherwise>  
						</c:choose>  
					</div>
					<div>
						<span class="spn_name">${forumPostAnswers.createUserName }</span> 
						<img src="<%=basePath%>img/protal/appPage/icon1.png" /> <br/> 
  						<span class="spn_time"><fmt:formatDate value="${forumPostAnswers.createTime }" type="date"/></span>
					</div>
					<div>
						${forumPostAnswers.content}
					</div>
					<hr id="hrs" />
				</div>
			</c:forEach>
		</div>
	</div>
	<a id="download">
	<div class="btm-banner">
		<img src="http://jjkangfu.cn:80/img/common/YK61.png"> 
		<span> &nbsp; 下载佳佳康复，查看更多内容 </span>
		<img id="right-all" src="http://jjkangfu.cn:80/img/common/all.png">
	</div>
	</a>
</body>
<!-- js区 -->
<script type="text/javascript" src="<%=basePath%>js/majorAnswer.js"></script>
<script type="text/javascript">
if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {

	$('#download').attr("href","https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8");
	$('#download').click(function (){
		iosHttps()
		$('#models').click(function (){$(this).remove()})
	})

} else if (/(Android)/i.test(navigator.userAgent)) {
	$('#download').attr("href","http://www.wandoujia.com/apps/com.yikang.app.yikangserver?utm_source=wechat-session&utm_medium=share&utm_campaign=routine");

} else if (/(Windows)/i.test(navigator.userAgent)) {

	$('#download').attr("href","http://jjkangfu.cn/index/productFooter");

} else {

	$('#download').attr("href","http://jjkangfu.cn/index/productFooter");

}

function iosHttps() {
	alert('ios')
	$("body").append("<div id='models'><img src='<%=basePath%>img/protal/appPage/activity/windowPrompt.png'></div>");
}
</script>
</html>