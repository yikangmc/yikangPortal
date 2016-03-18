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
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    	<script src="<%=basePath%>js/viewport740.js"></script>
    	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/mainm.css">
	<title>护理家-居家型术后及慢性病康复护理专家</title>
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
		<div class="mains">
			<div class="dv_title"><img src="<%=basePath%>img/protal/indexPhone/logo.png"></div>
			<div class="mag_banner">
				<img src="<%=basePath%>img/protal/indexPhone/banner.png">
			</div>
			<div class="dv_funsys">
				<div class="fun_info"><img src="<%=basePath%>img/protal/indexPhone/ser1.png">
				<p>一对一<br />定制化服务</p></div>
				<div class="fun_info"><img src="<%=basePath%>img/protal/indexPhone/ser2.png">
				<p>实时呼叫<br />实时应答</p></div>
				<div class="fun_info"><img src="<%=basePath%>img/protal/indexPhone/ser3.png">
				<p>执证康复师<br />定制化服务</p></div>
				<div class="fun_info"><img src="<%=basePath%>img/protal/indexPhone/ser4.png">
				<p>美国评估及<br />风控管理体系</p></div>
			</div>
			<div class="mag_banner2">
				<img src="<%=basePath%>img/protal/indexPhone/banner2.jpg">
			</div>
			<div class="ser_body">
				<div id="ser_title">我们致力于给予您最好的服务</div>
				<div id="ser_fonts">护理家提供的康复和护理服务，评估体系来源于美国目前广泛采用的最先进的评估标准，并对不同病种进行分类，将服务进行标准化，严格控制服务中每个环节，做到可量化，可控制。</div>
				<div class="dv_ser">
					<ul>
					<c:forEach items="${data }" var="serviceItem"  varStatus="status">
						<c:if test="${serviceItem.webPicUrl != null and  serviceItem.webPicUrl != '' and (serviceItem.serviceItemId==1 or serviceItem.serviceItemId==2 or  serviceItem.serviceItemId==5 or serviceItem.serviceItemId==6 )}">
						<li>
							<div class="ser_info">
								<img src="${serviceItem.webPicUrl}"><br />
								<p class="ser_title">${serviceItem.serviceTitle}</p>
								<hr class="hrs" />
								<p class="ser_infos">${serviceItem.serviceContent}</p>
								<a data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
									<div class="btn_porject">
										<font class="btn_money">￥${serviceItem.servicePrice}&nbsp;</font>|&nbsp;
										<font class="btn_getser">预约服务</font>&nbsp;>
									</div>
								</a>
							</div>
						</li>
						</c:if>
					</c:forEach>
						<li>
							<div class="ser_info">
								<img src="<%=basePath%>img/indextest.jpg">
								<img src="${serviceItem.webPicUrl}"><br />
								<p class="ser_title">${serviceItem.serviceTitle}康复康复</p>
								<hr class="hrs" />
								<p class="ser_infos">${serviceItem.serviceContent}康复康复康复康复康复康复康复康复康复康复康复康复</p>
								<a data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
									<div class="btn_porject">
										<font class="btn_money">￥213.00${serviceItem.servicePrice}&nbsp;</font>|&nbsp;
										<font class="btn_getser">预约服务</font>&nbsp;>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="ser_info">
								<img src="<%=basePath%>img/indextest.jpg">
								<img src="${serviceItem.webPicUrl}"><br />
								<p class="ser_title">${serviceItem.serviceTitle}康复康复</p>
								<hr class="hrs" />
								<p class="ser_infos">${serviceItem.serviceContent}康复康复康复康复康复康复康复康复康复康复康复康复</p>
								<a data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
									<div class="btn_porject">
										<font class="btn_money">￥213.00${serviceItem.servicePrice}&nbsp;</font>|&nbsp;
										<font class="btn_getser">预约服务</font>&nbsp;>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="ser_info">
								<img src="<%=basePath%>img/indextest.jpg">
								<img src="${serviceItem.webPicUrl}"><br />
								<p class="ser_title">${serviceItem.serviceTitle}康复康复</p>
								<hr class="hrs" />
								<p class="ser_infos">${serviceItem.serviceContent}康复康复康复康复康复康复康复康复康复康复康复康复</p>
								<a data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
									<div class="btn_porject">
										<font class="btn_money">￥213.00${serviceItem.servicePrice}&nbsp;</font>|&nbsp;
										<font class="btn_getser">预约服务</font>&nbsp;>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="ser_info">
								<img src="<%=basePath%>img/indextest.jpg">
								<img src="${serviceItem.webPicUrl}"><br />
								<p class="ser_title">${serviceItem.serviceTitle}康复康复</p>
								<hr class="hrs" />
								<p class="ser_infos">${serviceItem.serviceContent}康复康复康复康复康复康复康复康复康复康复康复康复</p>
								<a data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
									<div class="btn_porject">
										<font class="btn_money">￥213.00${serviceItem.servicePrice}&nbsp;</font>|&nbsp;
										<font class="btn_getser">预约服务</font>&nbsp;>
									</div>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="dv_bottom">
				<p id="btm_one">&copy;2016 益康美辰健康科技（北京）有限公司</p>
				<p id="btm_two">京ICP证15059991号-3</p>
			</div>
			<a href="javascript:void(0)" class="run" onclick="overlay()">
				<div id="btn_bottom">立即预约</div>
			</a>
		</div>
		<!-- 弹出框 -->
		<div id="modal-overlay">
			<form id="formServiceForm">
				<div class="modal-data">
					<a href="javascript:void(0)" onclick="overlay()">
					<div class="clear">× &nbsp; </div></a>
					<p class="p_model_title">预约我们的服务</p>
					<input class="ipt_porject" name="mobileNumber" id="inputMobileNumber" maxlength="11" type="text" placeholder="请输入您的手机号" />
					<select class="ipt_porject" name="serviceItemId"  id="inputServiceItmeId">
						<option value="">请输入你要预约的服务类型</option>
						<c:forEach items="${data }" var="serviceItem">
							<option style="color: #000" value="${serviceItem.serviceItemId }">${serviceItem.serviceTitle }</option>
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

			function btns() {
				document.getElementById("ser_p_bottom").css();
			}
		</script>
	</body>
</html>