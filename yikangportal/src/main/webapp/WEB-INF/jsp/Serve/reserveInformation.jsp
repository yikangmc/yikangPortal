<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" 	content="易康美辰,预约评估及服务" />
	<meta name="description" content="易康美辰,预约评估及服务" />
	<meta name="generator" 	content="易康美辰" />
	<meta name="author" 	content="易康美辰技术部" />
	<title>预约项目--填写个人信息</title>
	<style type="text/css">
		html, body {
			height: 100%;
			width: 100%;
			font: "Microsoft YaHei";
		}
		.dv_toptitle {
			width: 100%;
			height: 70px;
			background: #000;
			text-align: center;
			line-height: 70px;
			color: #FFF;
			font-size: 28px;
			font-family: Verdana, Geneva, sans-serif;
			font-weight: 400;
		}
		
		.dv_body {
			width: 90%;
			height: 100%;
			margin: 0 auto;
			margin-top: 30px;
			padding: 10px;
		}
		
		.dv_body_title {
			border-radius: 8px 8px 8px 8px;
			width: 100%;
			height: 70px;
			background: #A2E2F2;
			line-height: 70px;
			padding-left: 30px;
			font-size: 20px;
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
			font-size: 28px;
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
			width: 175px;
			height: 75px;
			font-size: 28px;
			font-weight: 600;
			color: #FFF;
			margin: 10px;
		}
		.dv_toptitle {
			width: 100%;
			height: 70px;
			background: #000;
			text-align: center;
			line-height: 70px;
			color: #FFF;
			font-size: 28px;
			font-family: Verdana, Geneva, sans-serif;
			font-weight: 400;
		}
		.dv_body {
			width:90%; 
			margin:0 auto;
			margin-top: 30px;
			padding:10px;
			text-align:center;
		}
		.dv_body_title {
			margin:0 auto;
			width:100%; 
			height:170px;
		}
		.dv_times {
			text-align:center;
			font:Verdana, Geneva, sans-serif;
			font-size:28px;
			font-weight:500;
			width:110px;
			height:110px;
			border-radius:100px;
			border:solid rgb(140,140,140) 0px;
			background: #c9f0fe;
			line-height:110px;
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
			border-left: 66px solid transparent;
			border-right: 66px solid transparent;
			border-bottom: 40px solid #c9f0fe;
			float:left;
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
	</style>

	<script type="text/javascript" src="<%=basePath%>/js/views/serve/serviceItemDetail.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/views/serve/reserveInformation.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/views/user/login.js"></script>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=99891508524054beccc322c75a2de45c"></script>
	
	<style type="text/css">
	    body {
	          font-size: 12px;
	      }
		.dv_toptitle {
			width: 100%;
			height: 70px;
			background: #000;
			text-align: center;
			line-height: 70px;
			color: #FFF;
			font-size: 52px;
			font-family: Verdana, Geneva, sans-serif;
			font-weight: 400;
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
				
			<div class="dv_body_title">
				为谁做：
				<div class="btn-group btn_txt">
					<select class="selectpicker">
						<c:forEach items="${appellations }" var="appellation">
							<option value="${ appellation.dicCode}">${appellation.dicName}</option>
						</c:forEach>
					</select>
				</div>
				&nbsp; 他/她的年龄：
				<div class="btn-group btn_txt">
					<select name="timeBucket" class="selectpicker" style="width: 102px;">
						<c:forEach items="${ageBrackets}" var="ageBracket">
							<option value="${ageBracket.dicCode }">${ageBracket.dicName }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div style="margin: 0 auto;" class="dv_body_text">
				
				<p style="height: 10px;"></p>
				他/她的住址： 
				<input  class="col-md-12 col-sm-12 col-xs-12 input"	 id="mapPositionAddress" name="mapPositionAddress" placeholder="地址热点地址"  data-toggle="modal" data-target="#selectMapPostion" style="font-size: 27px; height: 70px;" type="text"  />
				<input  class="col-md-12 col-sm-12 col-xs-12 input"  id="detailAddress" 	 name="detailAddress" 	   placeholder="详细地址" />

				<p style="height: 10px;"></p>
				他/她的联系方式： 
				<input name="phoneNumber" style="font-size: 27px; height: 50px;" type="text" class="col-md-12 col-sm-12 col-xs-12 input" />
				
				<p style="height: 10px;"></p>
				联系人姓名： 
				<input name="linkUserName" style="font-size: 27px; height: 50px;" type="text" class="col-md-12 col-sm-12 col-xs-12 input" />
				
				<p style="height: 10px;"></p>
				预约上门评估时间： 
				<input id="appointmentTime" style="font-size: 27px; height: 50px;" type="text"
					class="col-md-12 col-sm-12 col-xs-12 input" data-toggle="modal" data-target="#myModal" 	/>
				
				<p style="height: 10px;"></p>
				<input type="button" onclick="reserveInformation.getServicer()" value="获取服务人员"/>
				
				<div class="row" id="servicerDiv">
					<div class="col-md-6">
						无图片
					</div>
					<div class="col-md-6">
						
					</div>
				</div>	
				
				<button id="input_heightfour"  onclick="reserveInformation.submitAppointmentOrder()"
					style="background: #F2A71C; font-size: 27px; height: 90px; color: #FFF;"
					type="button" class="btn btn-lg col-md-12 col-sm-12 col-xs-12">马上预约</button>
			</div>
		</form>
	</div>
	
	<!--选择服务时间点  -->
	<div class="modal container fade" id="myModal" tabindex="-1" role="dialog">
		<div class="container" style="background:white;">
			<div class="modal-header span12">
				<button class="close" type="button" data-dismiss="modal">×</button>
				<h3>时间选择</h3>
			</div>
			<div class="modal-body span12">
				<div class="dv_body col-md-12">
			    	<div class="dv_body_title"> 
			        	<span style="color:#4E84E9; font-size:22px; display:block;  margin:0 auto; width:100%;">请选择预约评估时间,浅色代表已被他人预约最好在家人的陪同下进行工作。</span>
			            <div style=" text-align: center; margin:0 auto; border:solid rgb(15,15,15) 0px; width: 450px;">
			                <ul style="height: 10%; ">
			                	<c:forEach items="${serviceDateList }" var="serviceDate">
			                	     <li>
				                    	<a href="<%=basePath %>appointmentOrder/appointmentTime?serviceDate=${serviceDate.dateStr}">
				                            <div class="dv_times">
				                          		<font color="#66bffb">${serviceDate.weekStr }</font>
				                            </div>
				                        </a>
				                    </li>
			                	</c:forEach>
			                </ul>
			            </div>
			            <div style="padding-left: 25px; margin:0 auto; text-align: center; height:40px; width: 450px;">
			            	<div class="triangle-up" id="up_one">
			                	&nbsp;
			                </div>
			                <div class="triangle-up" id="up_two" style="border-bottom-color:#FFF;">
			                	&nbsp;
			                </div>
			                <div class="triangle-up" id="up_three" style="border-bottom-color:#FFF;">
			                	&nbsp;
			                </div>
			            </div>
			            <div id="dv_timeover">
			            	<c:forEach items="${custumerTimeQuantums }" var="custumeTime">
			            		<button class="btn_porject" onclick="serviceItemDetail.choseAppointmentTime('${custumeTime.timeQuantumId }','${custumeTime.startTime }')">${custumeTime.startTime }</button>
			            	</c:forEach>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
	</div>
	
	<!-- 选择服务地址 -->
	<div class="modal container fade" id="selectMapPostion" tabindex="-1" role="dialog">
		<div class="container" style="background:white;">
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
						<div class="col-md-6   text-center">
							<input class="form-control"  id="loginName" 	 name="loginName" 	type="text" placeholder="请输入手机号码"/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6   text-center">
							<input class="form-control"  id="loginPassword"  name="loginPassword" 	type="text" placeholder="请输入密码"/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<input class="btn_login btn" onclick="login.login()" type="button" value="登入" />
						</div>
					</div>
			 	</form>
			</div>
		</div>
	</div>
	
	
	<div class="modal hide fade" id="loginDialog" tabindex="-1" role="dialog">
		<div id="light" class="white_content">
			<!--登陆  -->
		 	<!-- 注册 -->
		 	<form action="registerForm">
			 	<div id="con_right" class="con">
					<input class="ipt_type ipt_radius" type="text" placeholder="请输入手机号码"/><br />
					<input style="width: 56%;" class="ipt_type ipt_radius" type="text" placeholder="请输入手机号码"/>
					<input style="width: 43%;" class="ipt_type btn_login" type="button" value="获取验证码" /><br />
					<input class="ipt_type ipt_radius" type="text" placeholder="请输入6-20位字母,数字或符号"/><br />
					<input class="ipt_type btn_login" type="button" value="确认" />
			 	</div>
		 	</form>
		</div>
	</div>
	
</body>

</html>
