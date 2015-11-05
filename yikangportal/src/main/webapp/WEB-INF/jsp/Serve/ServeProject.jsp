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
	<div class="dv_title">护龄家</div>

	<c:forEach items="${data }" var="serviceItem">
		<a
			href="<%=basePath%>/appointmentOrder/serviceItemDetail?serviceItemId=${serviceItem.serviceItemId}">
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
									<img src="<%=basePath%>/img/ServeImg/time.png" />${serviceItem.serviceTime }
									&nbsp; <font class="font_money" color="#F22D7B">${serviceItem.price}
									</font>
								</p>
							</ul>
						</div>
					</div>
				</div>
				<img style="width: 100%;"
					src="<%=basePath%>/img/ServeImg/border.png" />
			</div>
		</a>
	</c:forEach>

	<!-- 1 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/1.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">压疮换药与护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 2 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/2.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">骨关节置换术后康复护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 3 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/3.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">糖尿病中医护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 4 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/4.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">高血压中医护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 5 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/5.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">颈椎痛中医护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 6 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/6.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">肥胖养生中医调理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 7 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/7.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">鼻饲管与尿液管的更换与护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 8 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/8.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">PICC管的换药维护与护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 9 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div style="margin: 0 auto; width: 600px;">
						<div class="info_left">
							<img src="<%=basePath%>/img/ServeImg/9.png" />
						</div>
						<div class="info_right">
							<ul>
								<p class="font_title">气切口的护理</p>
								<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
								<p class="font_bottom">
									<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp;
									<font class="font_money" color="#F22D7B">￥300</font>
								</p>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<img style="width: 100%;" src="<%=basePath%>/img/ServeImg/border.png">
		</div>
	</a>
	<!-- 10 -->
	<a href="ServeProject">
		<div class="dv_body">
			<div class="dv_info">
				&nbsp;
				<div style="margin: 0 auto; width: 600px;">
					<div class="info_left">
						<img src="<%=basePath%>/img/ServeImg/10.png" />
					</div>
					<div class="info_right">
						<ul>
							<p class="font_title">造瘘口的护理</p>
							<p class="font_body">医学界压疮护理，减轻痛苦，防止感染，促进愈合</p>
							<p class="font_bottom">
								<img src="<%=basePath%>/img/ServeImg/time.png" /> 90分钟 &nbsp; <font
									class="font_money" color="#F22D7B">￥300</font>
							</p>
						</ul>
					</div>
				</div>
				<img style="width: 100%;"
					src="<%=basePath%>/img/ServeImg/border.png">
			</div>
		</div>
	</a>
	<style>
* {
	margin: 0px;
	padding: 0px;
}

.dv_body {
	width: 95%;
	margin: 0 auto;
	text-align: center;
	font-family: "Microsoft YaHei";
}

.dv_title {
	background: black;
	height: 70px;
	line-height: 70px;
	font-size: 36px;
	font-weight: 600;
	text-align: center;
	color: #fff;
}

.dv_info {
	margin: 0 auto;
	margin-top: 20px;
	margin-bottom: 20px;
	width: 80%;
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
	font-size: 28px;
	font-weight: 500;
	width: 330px;
	display: block;
}

.font_body {
	text-align: center;
	margin-top: 10px;
	width: 330px;
	font-size: 18px;
	display: block;
}

.font_bottom {
	display: block;
	text-align: center;
	margin-top: 10px;
	width: 330px;
	height: 50px;
	line-height: 50px;
	vertical-align: middle;
	font-size: 24px;
	color: #999;
}

.font_money {
	font-size: 28px;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</body>
</html>
