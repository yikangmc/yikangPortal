
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="keywords" content="易康美辰,预约评估及服务" />
	<meta name="description" content="易康美辰,预约评估及服务" />
	<meta name="generator" content="易康美辰" />
	<meta name="author" content="易康美辰技术部" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/main.css" />
	<link href='http://fonts.useso.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css' />
	<title>易康美辰</title>
	<script type="text/javascript">
		 var _hmt = _hmt || [];
		 (function() {
		 	var hm = document.createElement("script");
		 	hm.src = "//hm.baidu.com/hm.js?bfa063bc01b8c0b11ee446bb9d4072a4";
		 	var s = document.getElementsByTagName("script")[0];
		 	s.parentNode.insertBefore(hm, s);
		 })();
	</script>
	<script type="text/javascript" src="<%=basePath%>js/views/index/index3.js"></script>
</head>

<body>
	<div class="dv_title">
		<div class="tit_bnr">
			<div class="tit_logo">
				<img src="<%=basePath%>img/protal/mainIndex/logo.png" />
			</div>
			<div class="tit_onlys">
				<ul>
					<li>首页</li>
					<li><a style="color: #000;" href="#ser">服务</a></li>
					<li>加入我们</li>
					<li><a href="javascript:void(0)" class="run"
						onclick="overlay()"><div class="btn_porject">预约服务</div></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mag_banner">
		<img src="<%=basePath%>img/protal/mainIndex/banner.png" />
	</div>
	<div class="dv_main">
		<div class="dv_bodys">
			<ul>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_1.png" />
				<p class="p_server">一对一定制化康复护理方案</p></li>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_2.png" />
				<p class="p_server">实时呼叫，实时应答及时上门护理</p></li>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_3.png" />
				<p class="p_server">执证康复护师提供专业康复护理服务</p></li>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_4.png" />
				<p class="p_server">美国护理体系严格实施风控管理</p></li>
			</ul>
		</div>
	</div>
	<div class="mag_banner" style="height: 400px;">
		<img src="<%=basePath%>img/protal/mainIndex/banner2.png"/>
	</div>
	<div class="dv_info">
		<div class="dv_ser_title">
			<p class="p_infotitle">我们致力于给予您最好的服务</p>
			<a id="ser"></a>
			<div class="p_infobody">护理家提供的康复护理服务、评估体系均来源美国广泛采用的最先进的评估体系，并对不同病种进行分类，将服务进行标准化，严格控制服务中每个环节，做到可量化、可控制</div>
		</div>
		<div class="dv_ser_info">
			<ul>
				<c:forEach items="${data }" var="serviceItem">
					<c:if
						test="${serviceItem.webPicUrl != null and  serviceItem.webPicUrl != ''}">
						<li>
							<div class="ser_info">
								<div class="ser_model">
									<img style="width: 100%" src="${serviceItem.webPicUrl}"/>
										<p class="ser_p_title">${serviceItem.serviceTitle}</p>
										<hr class="hrs" />
										<p class="ser_p_body">${serviceItem.serviceContent}</p>
								</div>
								<div class="ser_p_bottom">
									￥${serviceItem.servicePrice}
									<button class="btn_cikinfo" data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
										<a href="javascript:void(0)">预约服务</a>
									</button>
								</div>
							</div>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div class="dv_bottom">
		<div class="bom">
			<div class="navigation">
				<ul>
					<li>关于我们&nbsp;丨&nbsp; 媒体报道&nbsp;丨&nbsp; 加入我们&nbsp;丨&nbsp;
						联系我们&nbsp;丨&nbsp; 帮助中心&nbsp;丨&nbsp; 友情</li>
					<li><a href="mailTo:BD@stellarheal.com">服务合作：BD@stellarheal.com</a> &nbsp;&nbsp;
						<a href="mailTo:support@stellarheal.com">投诉建议：support@stellarheal.com</a></li>
					<li>&copy;2016易康美辰健康科技（北京）有限公司&nbsp; 京ICP证xxxxxx号-3
						京公网安备xxxxxxxx</li>
				</ul>
			</div>
			<div class="code">
				<div class="code_qr">
					<img src="<%=basePath%>img/protal/mainIndex/code.png"/>
				</div>
				<div class="code_liaison">
					<p id="contact_us">联系我们</p>
					<p id="contact_phone">400-616-0909</p>
					<p id="contact_time">周一至周五&nbsp;9:00-20:00</p>
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

	<!-- 弹出框 -->
	<div id="modal-overlay">
		<form id="formServiceForm">
			<div class="modal-data">
				<a href="javascript:void(0)" onclick="overlay()">
				<div class="clear">×</div></a>
				<p class="p_model_title">预约我们的服务</p>
				<input class="ipt_porject" name="mobileNumber" id="inputMobileNumber" maxlength="11" type="text" placeholder="请输入您的手机号" />
				<select class="ipt_porject" name="serviceItemId"  id="inputServiceItmeId">
					<option value="">请输入你要预约的服务类型</option>
					<c:forEach items="${data }" var="serviceItem">
						<option value="${serviceItem.serviceItemId }">${serviceItem.serviceTitle }</option>
					</c:forEach>
				</select> 
				<input class="ipt_porject" id="inputRemark" name="remark" maxlength="100" type="text" placeholder="若有其他要求可在此处填写" />
				<button class="btn_onclick" type="button" onclick="index.getServiceItem()">立即预约</button>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		function overlay() {
			var e1 = document.getElementById('modal-overlay');
			e1.style.visibility = (e1.style.visibility == "visible") ? "hidden"
					: "visible";
		}
	</script>
</body>
</html>
