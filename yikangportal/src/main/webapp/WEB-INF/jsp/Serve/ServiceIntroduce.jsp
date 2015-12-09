<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.8.3.min.js"></script>
<title>预约服务</title>
</head>

<body>  
	<div class="dv_title">护理家</div>   
	
	<c:forEach items="${data }" var="serviceItem">
		<a href="<%=basePath%>/appointmentOrder/serviceItemDetail?serviceItemId=${serviceItem.serviceItemId}">
			<div class="dv_body">
				<div class="dv_info">
					&nbsp;
					<div style="margin: 0 auto; width: 600px;">
						<div class="info_left">
							<img src="<%=basePath%>/img/ServeImg/1.png" />
						</div>
						<div class="info_right">
							<ul>
								<p class="font_title">${serviceItem.serviceTitle}</p>
								<p class="font_body">${serviceItem.serviceContent}</p>
								<p class="font_bottom">
									<img src="<%=basePath%>/img/ServeImg/time.png" />${serviceItem.serviceTime } &nbsp; <font
										class="font_money" color="#F22D7B">${serviceItem.price} </font>
								</p>
							</ul>
						</div>
					</div>
				</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"/>
			</div>
		</a>
	</c:forEach>
	
	<!-- 1 -->
	<a href="ServeProject">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/1.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						PICC管的换药维护与护理
					</p>
					<p class="font_body">
						经验丰富的PICC置管维护团队，具备风险应急处理能力，综合素质能力强的的专业人员和高品质服务质量。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
		</div>
    	</div>
		<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 2 -->
   	<a href="ServeProject2">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/2.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						骨关节置换术后康复护理
					</p>
					<p class="font_body">
						三甲医院骨科护士解决生理疼痛和心理恐惧，全方位专业护理，预防并发症。顶尖康复师全程进行康复训练，让您快速安全健康的回归正常生活。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<a href="ServeProject3">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/3.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						脑卒中的康复护理
					</p>
					<p class="font_body">
						三甲医院骨科护士解决生理疼痛和心理恐惧，全方位专业护理，预防并发症。顶尖康复师全程进行康复训练，让您快速安全健康的回归正常生活。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 4 -->
   	<a href="ServeProject4">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/4.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						压疮换药与护理
					</p>
					<p class="font_body">
						预防与防治，减轻痛苦，防止感染，停止恶化，平顺康复。优秀ICU护士提供最专业护理，优质靠谱的敷料和药品。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money"color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
		</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 5 -->
   	<a href="ServeProject5">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/5.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						鼻饲管和尿管的更换和护理
					</p>
					<p class="font_body">
						三甲医院的护士上门为您更换导管，专业指导，规范操作，减少感染，助您早日康复。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 6 -->
   	<a href="ServeProject6">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/6.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						肥胖养生中医调理
					</p>
					<p class="font_body">
						为您私人定制针对您体质的减肥套餐、减肥中成药，针灸推拿调理，计划性的体育锻炼，及时给予您体重的干预，减缓控制肥胖并发症对您身体的损害。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 7 -->
   	<a href="ServeProject7">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/7.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						肩颈痛中医护理
					</p>
					<p class="font_body">
						专业的功能锻炼指导，针、灸、理疗您减缓疼痛，提高舒适度，使患者很快摆脱颈椎并发症不适，舒适生活，提高生活质量。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 8 -->
   	<a href="ServeProject8">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/8.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						高血压中医护理
					</p>
					<p class="font_body">
						定期监测血压，实现降压达标，平稳有效地控制血压，减缓靶器官的损害，控制心脑血管并发症的发生，改善生存质量，降低疾病负担。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 9 -->
   	<a href="ServeProject9">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/9.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						糖尿病以尿糖足的护理
					</p>
					<p class="font_body">
						重点是尿糖病足的护理，包括伤口的清洁，换药，周边皮肤与腐肉的处理。康复治疗按摩，皮肤护理，防止感染。辅以专业心理护理，让患者在愉悦中坚持治疗，在不剥夺患者愉快饮食的同时达到更好的康复。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	
   	<!-- 10 -->
   	<a href="ServeProject10">
	<div class="dv_body">
    	<div class="dv_info">
    		&nbsp;
			<div style="width: 820px; margin: 0 auto;">
			<div class="info_left">
				<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/10.png" />
			</div>
			<div class="info_right">
				<ul>
					<p class="font_title">
						气切口的护理
					</p>
					<p class="font_body">
						清除呼吸道分泌物，保持呼吸通畅，防止窒息及肺部感染，提高舒适度，预防并发症。
					</p>
					<p class="font_bottom">
						<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
					</p>
				</ul>
			</div>
			</div>
    	</div>
				<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 11 -->
   	<a href="ServeProject11">
		<div class="dv_body">
	    	<div class="dv_info">
	    		&nbsp;
				<div style="width: 820px; margin: 0 auto;">
				<div class="info_left">
					<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/11.png" />
				</div>
				<div class="info_right">
					<ul>
						<p class="font_title">
							造瘘口的护理
						</p>
						<p class="font_body">
							医学界压疮护理，减轻痛苦，防止感染，促进愈合
						</p>
						<p class="font_bottom">
							<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
						</p>
					</ul>
				</div>
			</div>
	    	</div>
					<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
   	<!-- 12 -->
   	<a href="ServeProject12">
		<div class="dv_body">
	    	<div class="dv_info">
	    		&nbsp;
				<div style="width: 820px; margin: 0 auto;">
				<div class="info_left">
					<img style=" width: 220px; height: 220px;" src="<%=basePath%>/img/ServeImg/12.png" />
				</div>
				<div class="info_right">
					<ul>
						<p class="font_title">
							自闭症的护理
						</p>
						<p class="font_body">
							临床经验丰富的资深康复师，为您上门提供自闭症患儿的康复治疗和教育，制定针对性的个体化康复方案，帮助孩子提高专注力、学习能力及参与活动的兴趣。
						</p>
						<p class="font_bottom">
							<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font class="font_money" color="#F22D7B">￥300</font>
						</p>
					</ul>
				</div>
			</div>
	    	</div>
					<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png"></div>
	</a>
	<style>
		*{ margin: 0px; padding: 0px;}
		.dv_body {
			width: 95%;
			margin: 0 auto;
			text-align: center;
			font-family:"Microsoft YaHei";
		}
		.dv_title {
			background: black;
			height: 70px;
			line-height: 70px;
			font-size: 40px;
			font-weight: 600;
			text-align: center;
			color: #fff;
		}
		.dv_info {
			margin: 0 auto;
			margin-top: 20px;
			margin-bottom: 20px;
			width: 900px;
			text-align: center;
		}
		.info_left {
			float: left;
		}
		.info_right {
			float: right;
			padding-bottom: 20px;
		}
		.info_right ul li {
			list-style-type: none;
		}
		.font_title {
			text-align: center;
			margin-top: 25px;
			font-size:40px;
			font-weight: 500;
			width: 485px;
			display: block;
		}
		.font_body {
			text-align: center;
			margin-top: 10px;
			width: 485px;
			font-size:20px;
			display: block;
		}
		.font_bottom {
			display: block;
			text-align: center;
			margin-top: 10px;
			width: 485px;
			height: 50px;
			line-height: 50px;
			vertical-align: middle;
			font-size:36px;
			color: #999;
		}
		.font_money {
			font-size: 28px;
		}
		a{
			text-decoration:none;
			color: black;
		}
		a:hover{
			text-decoration:none;
			color: black;
		}
	</style>
</body>
</html>
