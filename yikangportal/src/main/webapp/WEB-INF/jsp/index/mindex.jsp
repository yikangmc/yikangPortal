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
		<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    	<script src="<%=basePath%>js/viewport740.js"></script>
		<title>益康美辰</title>
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
	<style type="text/css">
		ol,ul,li { list-style:none; }
		.title { width: 100%; height: 66px; padding: 15 80 15 80; font-size: 18px; }
		.btn_porject { border-radius: 7px; border-style:solid; border-color: #ff6363; color: #ff6363; border-width:1px; background-color: transparent; width: 90px; height: 28px; line-height: 27px; text-align: center; margin: -3 0 0 0; }
		.flo { float: left; width: 50%; text-align: center; padding-top: 40px;}
		.dv_ser_title { width:100%;}
		.p_infotitle { font-size: 24px; color: #505050; margin: 90 0 0 0; text-align: center; }
		.p_infobody { font-size: 16px; word-spacing: 2px; letter-spacing: 2px; color: #787878;  padding: 20 80 60 80; text-align: center; }
		.dv_ser_info { width: 100%; height: 890px; padding: 0 50 0 50;  margin: 0 auto; padding-bottom: 90px; }
		.dv_ser_info ul li { float: left; width: 25%; float: left; }
		.ser_info { margin: 10 8 10 8; height: 372px; width: 210px; text-align: center; margin-bottom: 50px; }
		.ser_model {  background: #fafafa; padding-bottom: 7px;}
		.ser_p_title { font-size: 14px; color: #787878; padding: 13 0 13 0; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
		.ser_p_body { font-size: 12px; color: #787878;  padding: 13 12 0 12; }
		.ser_p_bottom { height: 30px; background: #fff; border: #0698da 1px solid; margin-top: 14px; font-size: 14px; color: #e43535; text-align: center; line-height: 30px; }
		.btn_cikinfo { height: 100%; width: 98px; border: 0; background: #059bda; text-align: center; line-height: 24px; float: right; color: #fff; font-size: 14px; }
		.dv_bottom { height: 220px; width: 100%;  padding-top: 46px; background: #585858; }
		.bom { width: 100%; margin: 0 auto; }
		.navigation { float: left; }
		.navigation ul li { line-height: 40px; font-size: 16px; font-weight: 400; color: #fff; text-align: left; }
		.hrs { margin: 0 12 0 12; background: #f5f3f3; }
		.clear { font-size: 22px; color: #c7c7c7; float: right; padding-right: 10px;}
		.p_server { padding: 8 30 0 30; word-spacing: 2px; letter-spacing: 2px; }
		.p_infotitle { font-size: 24px; color: #505050; margin: 90 0 0 0; text-align: center; }
		.p_infobody { font-size: 16px; word-spacing: 2px; letter-spacing: 2px; color: #787878;  margin: 40 0 60 0; text-align: center; }
		.p_model_title { font-size: 18px; padding: 23 0 23 0; color: #323232;}
		.ipt_porject { border: 1px #c7c6c7 solid; border-radius: 7px; padding: 10 0 10 8; margin-bottom: 22px; font-size: 14px; color: #000; width: 352px; height: 50px; }
		.btn_onclick {  width: 352px; height: 66px; background: #ff6363; border: 0; font-size: 18px; color: #fff; border-radius: 7px; }
		.modal-data{
		    position:relative;
		    top: 20%;
		    left: 0; right: 0;
		    width: 640px;
		    height: 426px;
		    z-index: 1001;
		    text-align:center;
		    margin: 100px auto;
		    background-color: #fff;
		    border-radius: 12px;
		    padding: 8 0 10 0;
		}

		#modal-overlay {
		    visibility: hidden;    
		    position: fixed; /* 使用绝对定位或固定定位  */
		    left: 0px;    
		    top: 0px;
		    width:100%;
		    height:100%;
		    text-align:center;
		    z-index: 1000;
		    background:rgba(0,0,0,0.5)!important;background:#000;filter:Alpha(opacity=60);
		}
	</style>
	<body>
		<div class="title">
			<div style="float: left;"><img  src="<%=basePath%>img/protal/indexPhone/logo.png"></div>
			<div style="float: left; padding-top: 8px; margin-left: 96px;">首页 &nbsp; &nbsp; 服务 &nbsp; &nbsp; 加入我们</div>
			<div style="float: left; padding: 8 0 0 60;"><a href="javascript:void(0)" class="run"
						onclick="overlay()"><button class="btn_porject">预约服务</button></a></div>
		</div>
		<img src="<%=basePath%>img/protal/indexPhone/banner.png">
		<div>
			<div class="flo"><img style="margin-bottom: 6px;" src="<%=basePath%>img/protal/indexPhone/ser1.png"><br />一对一定制化<br />康复护理方案</div>
			<div class="flo"><img style="margin-bottom: 6px;" src="<%=basePath%>img/protal/indexPhone/ser2.png"><br />实时呼叫，实时应答<br />及时上门护理</div>
		</div>
		<div>
			<div class="flo"><img style="margin-bottom: 6px;" src="<%=basePath%>img/protal/indexPhone/ser3.png"><br />执证康复护师<br />提供专业康复护理服务</div>
			<div class="flo"><img style="margin-bottom: 6px;" src="<%=basePath%>img/protal/indexPhone/ser4.png"><br />美国护理体系<br />严格实施风控管理</div>
		</div>
		<img style="margin-top: 40px;" src="<%=basePath%>img/protal/indexPhone/banner2.png">
		<div class="dv_ser_title">
			<p class="p_infotitle">我们致力于给予您最好的服务</p>
			<a id="ser"></a>
			<div class="p_infobody">护理家提供的康复护理服务、评估体系均来源美国广泛采用的最先进的评估体系，并对不同病种进行分类，将服务进行标准化，严格控制服务中每个环节，做到可量化、可控制</div>
		</div>
		<div class="dv_ser_info">
			<ul>
				<c:forEach items="${data }" var="serviceItem"  varStatus="status">
					<c:if test="${serviceItem.webPicUrl != null and  serviceItem.webPicUrl != '' and (serviceItem.serviceItemId==1 or serviceItem.serviceItemId==2 or  serviceItem.serviceItemId==5 or serviceItem.serviceItemId==6 )}">
						<li style="width: 50%; padding-left: 12px;">
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
										<a style="color: #fff;" href="javascript:void(0)">预约服务</a>
									</button>
								</div>
							</div>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<div class="dv_bottom">
		<div class="bom">
			<div class="navigation">
				<ul>
					<li>关于我们&nbsp;丨&nbsp; 媒体报道&nbsp;丨&nbsp; 加入我们&nbsp;丨&nbsp;
						联系我们&nbsp;丨&nbsp; 帮助中心&nbsp;丨&nbsp; 友情链接</li>
					<li><a href="mailTo:BD@stellarheal.com">服务合作：BD@stellarheal.com</a> &nbsp;&nbsp;
						<a href="mailTo:support@stellarheal.com">投诉建议：support@stellarheal.com</a></li>
					<li>&copy;2016易康美辰健康科技（北京）有限公司&nbsp; 京ICP证15059991号</li>
				</ul>
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
						<c:if test="${serviceItem.webPicUrl != null and  serviceItem.webPicUrl != '' and (serviceItem.serviceItemId==1 or serviceItem.serviceItemId==2 or  serviceItem.serviceItemId==5 or serviceItem.serviceItemId==6 )}">
							<option style="color: #000" value="${serviceItem.serviceItemId }">${serviceItem.serviceTitle }</option>
						</c:if>
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