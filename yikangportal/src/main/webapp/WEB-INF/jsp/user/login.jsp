<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<style>
	html, body {
		 height: 100%;
		 width: 100%;
	}
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
	.black_overlay {
		display: none;
		position: absolute;
		top: 0%;
		left: 0%;
		width: 100%;
		height: 100%;
		background-color:#f5f5f5;
		z-index:1001;
		-moz-opacity: 0.8;
		opacity:.80;
		filter: alpha(opacity=80);
	}
	.close {
		float:right;
		clear:both;
		width:100%;
		text-align:right;
		margin:0 0 6px 0
	}
	.close a {
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
	.ipt_phone {
		border-top-left-radius: 14px;
		border-top-right-radius: 14px;
		border-bottom: 1px solid #e3e3e3;
	}
	.ipt_pwd {
		border-bottom-left-radius: 14px;
		border-bottom-right-radius: 14px;
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
	#con_right {
		display: none;
	}
</style>
<script>
	function show(tag){
		var light=document.getElementById(tag);
		var fade=document.getElementById('fade');
		light.style.display='block';
		fade.style.display='block';
	}
	function hide(tag){
		$("#con_left").css({"display":"block"});
		$("#con_right").css({"display":"none"});
		var light=document.getElementById(tag);
		var fade=document.getElementById('fade');
		light.style.display='none';
		fade.style.display='none';
	}
	function newlogin(){
		$("#con_left").css({"display":"none"});
		$("#con_right").css({"display":"block"});
	}
</script>

<body>
<a href="javascript:void(0)" onclick="show('light')" style="font-size:40px;">打开</a>
<div id="light" class="white_content">
	<div class="close"><a href="javascript:void(0)" onclick="hide('light')">×</a></div>
	<div id="con_left" class="con">
		<input class="ipt_type ipt_phone" type="text" placeholder="请输入手机号码"/><br />
		<input class="ipt_type ipt_pwd" type="text" placeholder="请输入密码" /><br />
		<input class="ipt_type btn_login" type="button" value="登入" />
		<a href="javascript:void(0)" style="font-size:28px; color: #ffffff;" onclick="newlogin()">新用户点击注册</a>
 	</div>
 	<div id="con_right" class="con">
		<input class="ipt_type ipt_radius" type="text" placeholder="请输入手机号码"/><br />
		<input style="width: 56%;" class="ipt_type ipt_radius" type="text" placeholder="请输入手机号码"/>
		<input style="width: 43%;" class="ipt_type btn_login" type="button" value="获取验证码" /><br />
		<input class="ipt_type ipt_radius" type="text" placeholder="请输入6-20位字母,数字或符号"/><br />
		<input class="ipt_type btn_login" type="button" value="确认" />
 	</div>
</div>
<div class="black_overlay"></div>
</body>
</html>