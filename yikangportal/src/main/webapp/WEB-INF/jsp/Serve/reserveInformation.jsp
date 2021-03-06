<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" 			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" 	 content="易康美辰,预约评估及服务" />
	<meta name="description" content="易康美辰,预约评估及服务" />
	<meta name="generator" 	 content="易康美辰" />
	<meta name="author" 	 content="易康美辰技术部" />
	<title>预约项目--填写个人信息</title>

	<script type="text/javascript">
		var width = $(window).width();
		var height = $(window).height();
		if (width < 370) {
			$("head").append('<meta name="viewport"	content="width=device-width,minimum-scale=0.7,maximum-scale=0.7,user-scalable=no" />');
		}
	</script>
	<style type="text/css">
		html, body {
			height: 100%;
			width: 100%;
			font: "Microsoft YaHei";
		}
		.dv_toptitle {
			background: black;
			height: 40px;
			line-height: 40px;	
			font-size: 22px;
			font-weight: 600;
			text-align: center;
			color: #fff;
		}
		
		.dv_body {
			width: 100%;
			height: 100%;
			margin: 0 auto;
			margin-top: 30px;
		}
		
		.dv_body_title {
			border-radius: 8px 8px 8px 8px;
			width: 100%;
			font-size: 16px;
			margin:0 auto;
			width:100%; 
			height:170px;
		}
		
		.btn_txt {
			filter: alpha(opacity = 50);
			-moz-opacity: 0.5;
			-khtml-opacity: 0.5;
			opacity: 0.5;
		}
		
		.input {
			padding: 10px;
			width: 100%;
			height: 70px;
			margin-top: 10px;
			margin-bottom: 20px;
			border: 1px solid #3682E7;
			-moz-border-radius: 8px;
			-webkit-border-radius: 8px;
			border-radius: 8px;
		}
		
		.dv_body_text {
			font-size: 22px;
			font-family: Verdana, Geneva, sans-serif;
		}
		
		.selectpicker {
			border-radius: 7px;
			width: 80px;
			height: 35px;
			font-size: 24px;
		}
		.btn_porject {
			background-color: #428bca;
			border: 0px;
			border-radius: 7px;
			width: 112px;
			height: 60px;
			font-size: 28px;
			font-weight: 600;
			color: #FFF;
			margin: 10px;
		}
		.dv_body {
			width:90%; 
			margin:0 auto;
			margin-top: 30px;
			padding:10px;
			text-align:center;
		}
		.dv_times {
			text-align:center;
			font:Verdana, Geneva, sans-serif;
			font-size:22px;
			font-weight:300;
			width:80px;
			height:80px;
			border-radius:100px;
			border:solid rgb(140,140,140) 0px;
			background: #c9f0fe;
			line-height:85px;
			margin-top:30px;
		}
		ul li {
			position:relative;
			list-style-type:none;
			float:left;
			text-align:center;
			margin-right:20px;
		}
		.triangle-up {
			width: 0;
			height: 0;
			border-left: 40px solid transparent;
			border-right: 40px solid transparent;
			border-bottom: 27px solid #c9f0fe;
		}
		.times {
			margin:20px;
			margin-top:-37px;
			float:left;
		}
	    .font_times {
	        color: #FFF; 
	        position:relative; 
	        top:70px; 
	        font:Verdana, Geneva, sans-serif; 
	        font-size:38px;
	    }
		.btn_size{
			width:174px;
			height:74px;
			margin:17px;
			font:Verdana, Geneva, sans-serif;
			font-size:36px;
			font-weight:500;
		}
		.ipt_pe {
			margin-right: 20px;
		}
	</style>

	<script type="text/javascript" src="<%=basePath%>/js/views/serve/serviceItemDetail.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/views/serve/reserveInformation.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/views/user/login.js"></script>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=99891508524054beccc322c75a2de45c"></script>
	
	<style type="text/css">
	    body {
	          font-size: 12px;
	      }
		.ipt_names {
			width: 80%;
			height: 70px;
			border: 0px;
		    font-size: 36px;
		}
	
	</style>

	<style type="text/css">
	.white_content {
		display: none;
		position: absolute;
		top: 15%;
		left: 15%;
		width: 70%;
		border: 12px solid #00a1d8;
		z-index:1002;
		background:  #00a1d8;
	}
	.close {
		float:right;
		clear:both;
		width:100%;
		text-align:right;
		margin:0 0 6px 0
	}
	.close a{
		color:#333;
		text-decoration:none;
		font-size:70px;
		font-weight:700
	}
	.con {
		padding: 20px;
		text-align: center;
	}
	.ipt_type {
		height: 110px;
		width: 100%;
		font-size: 40px;
		padding-left: 30px;
		padding-right: 30px;
		border: 0px;
	}
	.ipt_radius {
		border-radius: 14px;
	}
	.btn_login {
		margin-top: 70px;
		margin-bottom: 40px;
		border-radius: 14px;
		background: #47d9bf;
		color: #ffffff;
		font-size: 42px;
	}
	.ipt_sel {
		height: 26px; font-size: 18px;
	}
	.ipt_models {
		height: 48px; font-size: 22px; width: 100%;
	}
	</style>
</head>
<body>
	<div class="dv_toptitle">护龄家</div>
	<div class="dv_body">
	<form id="appointmentOrderForm">
		
			<input type="hidden" id="appointmentDateTime" 	name="appointmentDateTime" 	value="${serviceDate }" />
			<input type="hidden" id="custumerTimeQuantumId" name="custumerTimeQuantumId" value="" />
			<input type="hidden" id="serviceItemId" 		name="serviceItemId"	 	value="${serviceItemId }" />
			<input type="hidden" id="districtCode" 			name="districtCode"	 		value="" />
			
			<c:forEach items="${medicinalApparatusIds}" var="ma">
				<input type="hidden"  name="medicinalApparatusId" value="${ma}" />
			</c:forEach>
				
			<div style="background: #A2E2F2; height: 70px; padding-top: 4px;" class="dv_body_title">
				为谁做：
				<div class="btn-group btn_txt">
					<select id="appelation" name="appellation" class="selectpicker ipt_sel">
						<c:forEach items="${appellations }" var="appellation">
							<option value="${ appellation.dicCode}">${appellation.dicName}</option>
						</c:forEach>
					</select>
				</div>
				<p style="height:2px;"> </p>
				&nbsp; 他/她的年龄：
				<div class="btn-group btn_txt">
					<select name="timeBucket" class="selectpicker ipt_sel">
						<c:forEach items="${ageBrackets}" var="ageBracket">
							<option value="${ageBracket.dicCode }">${ageBracket.dicName }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div style="margin: 0 auto; text-align: left;" class="dv_body_text">
				
				<p style="height: 10px;"></p>
				他/她的住址： 
				<input class="ipt_names input col-md-12 col-sm-12 col-xs-12 ipt_models" style="border: 1px solid #3682E7; -moz-border-radius: 8px; -webkit-border-radius: 8px; border-radius: 8px;" type="text" id="keyword" name="keyword" value="" placeholder="输入附近关键字" onfocus='this.value=""'/>
				<input class="col-md-12 col-sm-12 col-xs-12 input ipt_models" style="height: 60px; "  id="detailAddress" 	 name="detailAddress"  placeholder="详细地址" />
				<!-- hidden状态 -->
				<input  class="col-md-12 col-sm-12 col-xs-12 input"	 id="mapPositionAddress" name="mapPositionAddress" placeholder="地址热点地址"  data-toggle="modal" data-target="#selectMapPostion" style="font-size: 27px; height: 70px;" type="hidden"  />

				<p style="height: 10px;"></p>
				他/她的联系方式： 
				<input id="phoneNumber" name="phoneNumber" style="font-size: 22px;height: 60px; " type="text" class="col-md-12 col-sm-12 col-xs-12 input ipt_models" />
				
				<p style="height: 10px;"></p>
				联系人姓名： 
				<input id="linkUserName" name="linkUserName" style="font-size: 22px;height: 60px; " type="text" class="col-md-12 col-sm-12 col-xs-12 input ipt_models" />
				
				<p style="height: 10px;"></p>
				预约上门评估时间： 
				<input id="appointmentTime" style="font-size: 22px;height: 60px; " readonly="readonly" type="text"
					class="col-md-12 col-sm-12 col-xs-12 input ipt_models" onchange="reserveInformation.getServicer(true)"  onclick="serviceItemDetail.showAppointmentTime()"		/>
			</div>
				
				<div class="row" id="servicerDiv" style="font-size: 32px;">
					<div class="col-md-6" style="">
						
					</div>
				</div>	
				
				<button id="input_heightfour"  onclick="reserveInformation.submitAppointmentOrder()"
					style="background: #F2A71C; font-size: 27px; height: 60px; color: #FFF; margin-bottom: 20px;"
					type="button" class="btn btn-lg col-md-12 col-sm-12 col-xs-12">马上预约</button>
		</form>
	</div>
	
	<!--选择服务时间点  -->
	<div class="modal container fade " id="myModal" tabindex="-1" role="dialog">
		<div class="container" style="background: white;">
			<div class="modal-header span12">
				<button class="close" type="button" data-dismiss="modal">×</button>
				<h3>时间选择</h3>
			</div>
			<div class="dv_body dv_body_title col-md-12" style="color:#4E84E9; font-size:22px; display:block;  margin:0 auto; width:100%; height: 140px;">
		        	请选择预约评估时间,浅色代表已被他人预约最好在家人的陪同下进行工作。
			</div>
			<div style="width:305px; margin: 0 auto;">
			<div style="width: 300px; margin-left: -10px;">
			   	<ul style="background: orange;">
			     	<c:forEach items="${serviceDateList }" var="serviceDate">
		            	<li style="height: 140px; display: block; margin: 0 auto;">
			         		<a href="javascript:void(0)" onclick="reserveInformation.getServiceDate('${serviceDate.dateStr}')">
		                    	<div class="dv_times" style="text-align: center;">
			                    	<font color="#66bffb">${serviceDate.weekStr }</font>
		                      	</div>
					            <div class="triangle-up" id="upOne${serviceDate.dateStr }" style="display:${serviceDate.isSelected?"black":"none"}" style="text-align: center;" >
							    	&nbsp;
							    </div>  
				           	 </a>
				       	</li>
			      	</c:forEach>
			  	</ul>
			</div>
			<div  style="width: 300px; margin-left: 18px;" id="dv_timeover">
			 	<c:forEach items="${custumerTimeQuantums }" var="custumeTime">
			       	<button class="btn_porject" onclick="serviceItemDetail.choseAppointmentTime('${custumeTime.timeQuantumId }','${custumeTime.startTime }')">${custumeTime.startTime }</button>
			   	</c:forEach>
			</div>
		</div>
		</div>
		
	</div>
	<!-- 选择服务地址 -->
	<div class="modal container fade" id="selectMapPostion" tabindex="-1" role="dialog">
		<div class="container" style="background: white;">
			<div class="modal-header span12">
				<button class="close" type="button" data-dismiss="modal">×</button>
				<h3 id="myModalLabel">搜索热点地址</h3>
			</div>
			<div class="modal-body span12">
				<div class="row span12">
				    <input class="ipt_names" type="text" id="keyword" name="keyword" value="" placeholder="搜索热点地址" onfocus='this.value=""'/>
				</div>	
			</div>
		</div>
	</div>
	
	
	<!-- 登陆modal -->
	<div class="modal  fade" id="loginDialog" tabindex="-1" role="dialog">
		<div class="container " style="background:white;">
		  <div class="modal-header span12">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		    <h3>登录</h3>
		  </div> 
			<div class="container span12  text-center">
				<form id="loginForm">
					<div class="row">
						<div class="col-md-6   text-center ipt_pe">
							<input class="form-control"  id="loginName" style="height: 60px;" name="loginName" 	type="text" placeholder="请输入手机号码"/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6   text-center ipt_pe">
							<input class="form-control"  id="loginPassword" style="height: 60px;"  name="loginPassword" 	type="text" placeholder="请输入密码"/>
						</div>
					</div>
					<div class="row">
<!-- 						<div class="col-md-6 col-md-offset-3"> -->
						<div class="col-md-6">
							<input class="btn_login btn" onclick="login.login()" style=" margin-bottom: -40px; width: 240px;" type="button" value="登入" />
							<input class="btn_login btn" onclick="login.showRegisterDialog()" style=" width: 240px;" type="button" value="注册" />
						</div>
					</div>
			 	</form>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="registerDialog" tabindex="-1" role="dialog">
		<div class="container " style="background:white;">
			  <div class="modal-header span12">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			    <h3>注册</h3>
			  </div>
				<div class="container span12  text-center">
			
			 	<!-- 注册 -->
			 	<form id="registerForm">
				 	<div id="con_right" class="con">
						<input id="mobileNumber" style="height: 60px;"   name="loginName"  class="form-control"   type="text" placeholder="请输入手机号码"/><br />
						<input style="width: 56%; margin-right: 1%; height: 60px;" name="captcha" class="form-control" type="text" placeholder="验证码"/>
						<input style="width: 40%; height: 60px;" class="form-control"  onclick="login.getCaptcha()" type="button" value="获取验证码" /><br />
						<input style="height: 60px;" class="form-control"  name="loginPassword" type="text" placeholder="请输入6-20位字母,数字或符号"/><br />
						<input class="form-control btn_login btn" style="height: 74px;" type="button" onclick="login.register()" value="注册" />
				 	</div>
			 	</form>
			</div>
		</div>
	</div>
</body>

</html>
