<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>预约成功---预约详情</title>
	<style type="text/css">
		.dv_title { height: 200px; background: #249dde;}

		.dv_bodys { font-size: 22px; font-weight: 400; padding-top: 20px; }
		.dv_bodys span { color: gray; }
		.dv_bodys p { border-bottom: #e4e5e7 2px solid; line-height: 26px; padding: 0 20 10 20; }

		.dv_bottom { font-size: 20px; position: fixed; bottom: 0px; width: 100%;}

		.btn_porject { height: 45px; border: 0px; width: 50%; float: left; color: #e4e5e7;}

		#btn_phone { background: #249dde;}
		#btn_clk { background: #fda918;}

		#doctor_info { margin-bottom: 42px;}
	</style>
</head>

	<body>
		<div class="dv_title">

		</div>
		<div class="dv_bodys">
			<p><span>上门地址:</span> ${address }</p>
			<p><span>上门时间:</span> ${serviceDate }</p>
			<p><span>联系电话:</span> ${phoneNumber }</p>
			<p><span>联系姓名:</span> ${linkUserName }</p>
			<p id="doctor_info">
				<img src="${photoUrl}">
				${servicerName }
			</p>
		</div>
		<div class="dv_bottom">
			<a href="tel:4006160909"><input class="btn_porject" id="btn_phone" type="button" value="400-616-0909" /></a>
			<input class="btn_porject" id="btn_clk" type="button" value="确定" />
		</div>
	</body>
</html>
