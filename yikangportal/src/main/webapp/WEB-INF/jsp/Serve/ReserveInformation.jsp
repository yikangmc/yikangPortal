<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>æ æ é¢ææ¡£</title>
<!--
<link rel="stylesheet" type="text/css" href="css/protal/mainCss.css" /-->
<!-- Bootstrap -->
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="dv_toptitle">æ¤é¾å®¶</div>
	<div class="dv_body">
    	<div class="dv_body_title">
        	ä¸ºè°åï¼
            <div class="btn-group btn_txt">
               <select class="selectpicker">
					<option>ç¶äº²</option>
					<option>æ¯äº²</option>
					<option>å¤å©</option>
					<option>å¤å¬</option>
					<option>ç·ç·</option>
					<option>å¥¶å¥¶</option>
					<option>èªå·±</option>
				</select>
            </div> 
			&nbsp; 
            ä»/å¥¹çå¹´é¾ï¼
            <div class="btn-group btn_txt">
               <select class="selectpicker" style="width: 102px;">
					<option>50-60</option>
					<option>61-70</option>
					<option>71-80</option>
					<option>81-90</option>
					<option>91-100</option>
				</select>
            </div>
     	</div>
        <div style="margin:0 auto;" class="dv_body_text">
        <p style="height:10px;"></p>
        	ä»/å¥¹çä½åï¼
            <input name="mobileNumber" style="font-size:27px; height:70px;" type="text"
                            class="col-md-12 col-sm-12 col-xs-12 input" />
           	<p style="height:10px;"></p>
        	ä»/å¥¹çèç³»æ¹å¼ï¼
            <input name="mobileNumber" style="font-size:27px; height:50px;" type="text"
                            class="col-md-12 col-sm-12 col-xs-12 input" />
       		<p style="height:10px;"></p>
        	èç³»äººå§åï¼
            <input name="mobileNumber" style="font-size:27px; height:50px;" type="text"
                            class="col-md-12 col-sm-12 col-xs-12 input" />
          	<p style="height:10px;"></p>
        	é¢çº¦ä¸é¨è¯ä¼°æ¶é´ï¼
            <input name="mobileNumber" style="font-size:27px; height:50px;" type="text"
                            class="col-md-12 col-sm-12 col-xs-12 input" />
          	<button id="input_heightfour" style="background: #F2A71C; font-size:27px; height:90px; color: #FFF;"
					type="button" class="btn btn-lg col-md-12 col-sm-12 col-xs-12">é©¬ä¸é¢çº¦</button>
        </div>
    </div>
<script>
	$(document).ready(function(){
		var width = $(window).width();
		var heigth = $(window).height();
		//alert("å½åçå®½"+parseInt(width)+"ï¼å½åçé«"+parseInt(heigth));
		var infoanimateLeft = parseInt(screen.height); // è·å¾å½ååè¾¨ç
		var bigimg = document.getElementById("#midtopimg");
		if(heigth >= width){
			//alert("æ§è¡ææºæ¹æ¡");
		}
	});
	var $$ = function (id) { 
	return document.getElementById(id); 
		} 
		window.onload = function () { 
		var btnSelect = $$("btn_select"); 
		var curSelect = btnSelect.getElementsByTagName("span")[0]; 
		var oSelect = btnSelect.getElementsByTagName("ul")[0]; 
		var aOption = btnSelect.getElementsByTagName("li"); 
		oSelect.onchange = function () { 
		var text=oSelect.options[oSelect.selectedIndex].text; 
		curSelect.innerHTML = text; 
		} 
	} 
      window.onload=function(){
      $('.selectpicker').selectpicker();
      };
</script>
<style>
	html,body{
		height:100%; width:100%;
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
		width:90%; 
		height:100%; 
		margin:0 auto; 
		margin-top: 30px;
		padding:10px;
	}
	.dv_body_title {
		border-radius:8px 8px 8px 8px;
		width:100%; 
		height:70px;
		background:#A2E2F2;
		line-height:70px;
		padding-left:30px;
		font-size: 20px;
	}
	.btn_txt {
		filter:alpha(opacity=50);  
		-moz-opacity:0.5;  
		-khtml-opacity: 0.5;  
		opacity: 0.5; 
	}
	.input{
		padding:10px; width:100%; height:70px;
		margin-top:10px;
		margin-bottom:20px;
		border: 1px solid #3682E7;
		-moz-border-radius: 8px; 
		-webkit-border-radius: 8px; 
		border-radius:8px;
	}
	.dv_body_text{
		font-size: 28px;
		font-family: Verdana, Geneva, sans-serif;
	}
	.selectpicker {
		border-radius: 7px;
		width: 80px;
		height: 35px;
		font-size: 24px;
	}
</style>
</body>
</html>
