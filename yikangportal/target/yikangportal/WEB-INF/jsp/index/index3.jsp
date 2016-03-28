<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="keywords" content="易康美辰,预约评估及服务" />
	<meta name="keywords" content="护理家，术后康复训练，康复护理" />
	<meta name="description" content="易康美辰,预约评估及服务" />
	<meta name="generator" content="易康美辰" />
	<meta name="author" content="易康美辰技术部" />
	<meta name="description" content="护理家，给你的健康加满分，为您提供居家型的术后康复训练，慢性病的康复治疗，和专业的居家护理服务， 术后康复的治疗进行早期的康复疗法接入，慢性病的康复拥有护理家标准的服务体系针对性一对一提供治疗， 让您在家和医院均能享受安全的舒适的服务标准" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/main.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css">
	<title>佳佳康复-居家型术后及慢性病康复护理专家</title>
	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
	  		var hm = document.createElement("script");
	  		hm.src = "//hm.baidu.com/hm.js?79d79c3004581dfba19b737b604fb566";
	  		var s = document.getElementsByTagName("script")[0]; 
	  		s.parentNode.insertBefore(hm, s);
		})();
	</script>
	<script type="text/javascript" src="<%=basePath%>js/views/index/index3.js"></script>
</head>

<body>
	<!-- 悬浮窗 -->
	<div class="box">
	<a href="javascript:;" onclick="onlicks()"><span class="title">在线客服</span></a>
	    <ul>
	        <li class="box_tel">
	            <p class="num">400-616-0909</p>
	            <p class="hot">全国统一服务热线</p>
	        </li>
	        <li>
	        	<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3123641388&site=qq&menu=yes">
		        	<button id="btn">
		        		在线QQ
		        	</button>
	        	</a>
	        </li>
	        <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3123641388&site=qq&menu=yes">
	        	<img border="0" width="100%" src="<%=basePath%>img/protal/mainIndex/202.jpg" alt="我们竭诚为您服务！" title="我们竭诚为您服务！"/></a></li>
	        <li class="ewm">
	        	<div id="font_left">扫一扫</div>
	        	<div id="font_right">关注佳佳康复</div></li>
	    </ul>
	</div>
	<div class="dv_title">
		<div class="tit_bnr">
			<div class="tit_logo">
				<img src="<%=basePath%>img/protal/declare/logo.png" />
			</div>
			<div class="tit_onlys">
				<div>
					<ul>
						<li><a href="http://www.gethuli.com">首页</a></li>
						<li><a href="#ser">服务</a></li>
						<li><a href="http://www.jjkangfu.com/index/declare">加入我们</a></li>
						<li><a href="javascript:void(0)" class="run"
							onclick="overlay()"><button class="btn_porject">预约服务</button></a>
						</li>
						<li>
							<div style="text-align: center; width:150px; position: absolute; top: 14px;">
								<p style="font-size:20px; color: #ff3c3c;">400-616-0909</p>
								<p style="font-size:12px; color: #515151;">周一至周五10:30-19:00</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="mag_banner" style="background: url(<%=basePath%>img/protal/mainIndex/banner.jpg) no-repeat; background-position: center; ">
	</div>
	<div class="dv_main">
		<div class="dv_bodys">
			<ul>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_1.png" />
			        <p class="p_server">一对一定制化康复<br />护理方案</p></li>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_2.png" />
				<p class="p_server">实时呼叫，实时应答<br />及时上门护理</p></li>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_3.png" />
				<p class="p_server">执证康复护师<br />提供专业康复护理服务</p></li>
				<li><img src="<%=basePath%>img/protal/mainIndex/icon_4.png" />
				<p class="p_server">美国护理体系<br />严格实施风控管理</p></li>
			</ul>
		</div>
	</div>
		<div class="mag_banner" style="background: url(<%=basePath%>img/protal/mainIndex/banner2.jpg) no-repeat; background-position: center; height: 240px; height: 240px\9; margin-top: 270px;">
	</div>
	<div class="dv_info">
		<a id="ser"></a>
		<div class="dv_ser_title">
			<p class="p_infotitle">我们致力于给予您最好的服务</p>
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
									
									<img style="width: 100%" src="<%=basePath%>img/indextest.jpg"/>
									<!-- <img style="width: 100%" src="${serviceItem.webPicUrl}"/> -->
										<p class="ser_p_title">${serviceItem.serviceTitle}</p>
										<hr class="hrs" />
										<p class="ser_p_body">${serviceItem.serviceContent}</p>
								</div>
								<a style="background: #fff; margin-top: 2px;" data-service-item-id="${serviceItem.serviceItemId }" onclick="index.fillForm(this)">
									<div class="ser_p_bottom">
										￥${serviceItem.servicePrice}
										|
											预约服务
										>
									</div>
								</a>
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
					<li>
						<a href="<%=basePath%>index/declare">关于我们</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">媒体报道</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">加入我们</a>&nbsp;丨&nbsp;
						<a href="<%=basePath%>index/declare">联系我们</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">帮助中心</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">友情链接</a>
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
	<div id="dv_mode">
		
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

		function onlicks (){
            $(".box").animate({right:"-181"});
            if ($(".box").css("right")=="-181px") $(".box").animate({right:"0"});
        }
	</script>
</body>
</html>