<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/common/protalhead.jsp"%>
<link rel="shortcut icon" href="<%=path%>/img/common/YK.png" />
<link rel="Bookmark" href="<%=path%>/img/common/YK.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>易康美辰</title>

<link rel="stylesheet" type="text/css" href="css/protal/mainCss.css" />
<link rel="stylesheet" type="text/css" media="screen and (max-device-width: 400px)" href="css/protal/smallScreen.css" />
<!-- Bootstrap -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script>
var _hmt = _hmt || [];
(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?bfa063bc01b8c0b11ee446bb9d4072a4";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
})();
</script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div id="container">
		<div class="row">
			<div class="col-md-12">
				<c:forEach items="${data }" var="serviceItem">
					<a href="<%=basePath%>appointmentOrder/serviceItemDetail?serviceItemId=${serviceItem.serviceItemId}">
						<div class="dv_porject">
							<img src="${serviceItem.picUrl}"/>
							<div class="mag_title">${serviceItem.serviceTitle}</div>
							<div class="mag_text">
								${serviceItem.serviceContent}
								<img style="margin: 16 0 24 0; " src="<%=basePath%>img/protal/topborder.png">
								<div>
									<div class="btn_porject btn_money" >￥${serviceItem.servicePrice}</div>
									<div class="btn_porject btn_time" ><img class="tm" src="<%=basePath%>img/protal/times.png">${serviceItem.serviceTime}min</div>
								</div>	
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
