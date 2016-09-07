<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<script src="<%=basePath%>js/viewport.js"></script>
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />

	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/index/productFooter.css">

	<title>佳佳产品-居家型术后及慢性病康复护理专家</title>
</head>
	<style type="text/css">
		.nav-body li a {
			color: #797979;
		}
	</style>
	<body>
		<!-- 导航栏 -->
		<a name="tit-top"></a>
		<div class="nav">
			<div class="nav-body">
				<a class="Nbody-left">
					<img src="<%=basePath%>img/index/logo.png">
				</a>
				<ul>
					<li><a href="http://www.jjkangfu.cn">首页</a></li>
					<li><a href="http://jjkangfu.cn/index/productFooter">佳佳产品</a></li>
					<li><a href="http://jjkangfu.cn/index/declare">关于我们</a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<div class="main-download">
				<div class="main-phone">
					<img src="<%=basePath%>img/index/productFooter/phone00.png"/>
				</div>
				<div class="download">
					<h1>佳佳康复</h1>
					<h4>一个有温度的康复内容社区</h4>
					<div class="appDownload">
						<div class="QRCode">
							<img id="code" src="<%=basePath%>img/common/AndroidCode.png"/>					
						<p>扫码下载佳佳康复</p>
						</div>					
						<div class="downloadBtn">
							<a id="android" target="_blank" href="http://mobile.baidu.com/item?docid=9736197&source=s1001">Android版下载</a>
							<!-- <font style="font-size: 12px; color: #0faadd;">(移动鼠标替换Android二维码)</font> -->
							<a id="ios"  target="_blank" href="https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8">iPhone版下载</a>
							<!-- <font style="font-size: 12px; color: #3dc0b0;">(移动鼠标替换IOS二维码)</font> -->
						</div>
					</div>				
				</div>	
			</div>	
		</div>
		<div class="contentTop" style="background: url(<%=basePath%>img/index/productFooter/colorTop.png) no-repeat center top;">
			<div class="contentTop-main">
				<div class="contentTop-main-tip">
					<div class="magPlay">
						<img src="<%=basePath%>img/index/productFooter/phone01.png"/>
					</div>
				</div>
				<ul>
					<li class="listTitle">标签化的内容</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>丰富的康复标签，更快找到你最想了解的康复话题</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>分享你的康复日常，在康复路上与病友温暖同行</li>
				</ul>
				<div class="contentTop-main-act">
					<div class="magPlay">
						<img src="<%=basePath%>img/index/productFooter/phone02.png"/>
					</div>
				</div>
				<ul>
					<li class="listTitle">可靠的康复科普内容</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>由佳佳康复认证的专业人员编辑发布，让你获取最新的康复技术及行情</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>专业人员之间交流共进，共享互助的良机</li>
				</ul>
			</div>
		</div>
		<div class="contentBottom" style="background: url(<%=basePath%>img/index/productFooter/colorBottom.png) no-repeat center bottom;">
			<div class="contentBottom-main">
				<div class="contentTop-main-asw">
					<div class="magPlay">
						<img src="<%=basePath%>img/index/productFooter/phone03.png"/>
					</div>
				</div>
				<ul>
					<li class="listTitle">专业人士热心答疑</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>针对病情问题描述，佳佳康复的专业人员 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;将给出最中肯的答疑及建议</li>
					
				</ul>
				<div class="contentTop-main-intro">
					<div class="magPlay">
						<img src="<%=basePath%>img/index/productFooter/phone04.png"/>
					</div>
				</div>
				<ul>
					<li class="listTitle">佳佳活动——让康复触手可及</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>康复医学的最新理念和技术在各活动中得以传播，让更多人<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在康复治疗中得到全身心功能和能力的恢复</li>
					<li class="fonts-left"><span><img src="<%=basePath%>img/index/productFooter/icon01.png"/></span>活动均通过佳佳康复审核后发布，保证活动的可执行性，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;让康复变得轻松有趣</li>
				</ul>
				<a href="#tit-top">即刻开始康复之旅</a>
			</div>
		</div>
		<!-- 底部导航栏 -->
		<div class="dv_bottom">
			<div class="bom">
				<div class="navigation">
					<ul>
						<li>
							<a href="index/declare?id=1">关于我们</a>&nbsp;丨&nbsp; 
							<a href="index/declare?id=2">媒体报道</a>&nbsp;丨&nbsp; 
							<a href="index/declare?id=3">加入我们</a>&nbsp;丨&nbsp;
							<a href="index/declare?id=4">联系我们</a>&nbsp;丨&nbsp; 
							<a href="index/declare?id=5">帮助中心</a>&nbsp;丨&nbsp; 
							<a href="index/declare?id=6">友情链接</a>
						</li>
						<li><a href="mailTo:BD@stellarheal.com">服务合作：BD@stellarheal.com</a> &nbsp;&nbsp;
							<a href="mailTo:support@stellarheal.com">投诉建议：support@stellarheal.com</a></li>
						<li>&copy;2016易康美辰健康科技（北京）有限公司&nbsp; 京ICP证15059991号</li>
					</ul>
				</div>
				<div class="code">
					<div class="code_qr">
						<img src="<%=basePath%>img/protal/mainIndex/code.png"/>
					</div>
					<div class="code_liaison">
						<p id="contact_us">联系我们</p>
						<p id="contact_phone">400-616-0909</p>
						<p id="contact_time">周一至周五&nbsp;10:30-19:00</p>
						<p id="icon">
							<a target="_Blank"
								href="http://weibo.com/u/5368694680">
								<img src="<%=basePath%>img/protal/mainIndex/xl1.png"
								onMouseOver="this.src='<%=basePath%>img/protal/mainIndex/xl.png'"
								onMouseOut="this.src='<%=basePath%>img/protal/mainIndex/xl1.png'"/>
							</a> &nbsp; <a target="_Blank" href=""> <img
								src="<%=basePath%>img/protal/mainIndex/yx.png"
								onMouseOver="this.src='<%=basePath%>img/protal/mainIndex/yx1.png'"
								onMouseOut="this.src='<%=basePath%>img/protal/mainIndex/yx.png'"/></a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">

			// $('#android').mouseover(function () {
			// 	$('#code').attr("src","<%=basePath%>img/common/AndroidCode.png");
			// });

			// $('#ios').mouseover(function () {
			// 	$('#code').attr("src","<%=basePath%>img/common/IOSCode.png");
			// })

			if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {

				$('#download').attr("href","https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8");
				$('#download').click(function (){
					iosHttps()
					$('#models').click(function (){$(this).remove()})
				})

			} else if (/(Android)/i.test(navigator.userAgent)) {

				$('#download').attr("href","http://mobile.baidu.com/item?docid=9736197&source=s1001");

			} else if (/(Windows)/i.test(navigator.userAgent)) {

				$('#download').attr("href","http://jjkangfu.cn/index/productFooter");

			} else {

				$('#download').attr("href","http://jjkangfu.cn/index/productFooter");

			}
		</script>
	</body>
</html>