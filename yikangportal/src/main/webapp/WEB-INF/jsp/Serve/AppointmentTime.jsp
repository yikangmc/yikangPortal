<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>护龄家</title>
<!--
<link rel="stylesheet" type="text/css" href="css/protal/mainCss.css" /-->
<!-- Bootstrap -->
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
var _hmt = _hmt || [];
(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?bfa063bc01b8c0b11ee446bb9d4072a4";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
})();
</script>
</head>

<body>
	<div class="dv_toptitle">护龄家</div>
	<div class="dv_body">
    	<div class="dv_body_title">
        	<span style="color:#4E84E9; font-size:22px; display:block; width:450px; margin:0 auto;">请选择预约评估时间,浅色代表已被他人预约最好在家人的陪同下进行工作。</span>
            <div style=" width:450px; height:145px; margin:0 auto; border:solid rgb(15,15,15) 0px;">
                <ul>
                	<c:forEach items="${serviceDateList }" var="serviceDate">
                	     <li>
	                    	<a onclick="HiddenDivoneOne()">
	                            <div class="dv_times">
	                          		<font color="#66bffb">${serviceDate.weekStr }</font>
	                            </div>
	                        </a>
	                    </li>
                	</c:forEach>
                </ul>
            </div>
            <div style=" width:450px; height:40px; margin:0 auto;">
            	<div class="triangle-up" id="up_one" style=" margin-left:25px;">
                	&nbsp;
                </div>
                <div class="triangle-up" id="up_two" style=" border-bottom-color: #FFF;">
                	&nbsp;
                </div>
                <div class="triangle-up" id="up_three" style=" border-bottom-color: #FFF;">
                	&nbsp;
                </div>
            </div>
            <div id="dv_timeover">
            
            	<c:forEach items="${custumerTimeQuantums }" var="custumeTime">
            		<button class="btn_porject">${custumeTime.startTime }</button>
            	</c:forEach>
            	
            </div>
        </div>
    </div>
<script>
    var btn  = document.getElementsByTagName("button");
    for(var i=0;i<btn.length;i++){
        (function(index){
            btn[index].onclick = function(){
                if(btn[index].style.backgroundColor === "gray"){
                    btn[index].style.backgroundColor = "#428bca";
                }else{
                    btn[index].style.backgroundColor = "gray";
		    window.location.href = 'ReserveInformation'
                }
 
            }
        }(i))
 
    }
  	window.onload=function(){
      $('.selectpicker').selectpicker();
	};
	function HiddenDivoneOne()
   	{
		document.getElementById("up_one").style.borderBottomColor = "#c9f0fe"
		document.getElementById("up_two").style.borderBottomColor = "white"
		document.getElementById("up_three").style.borderBottomColor = "white"
   	}
	function HiddenDivoneTwo()
   	{
		document.getElementById("up_one").style.borderBottomColor = "white"
		document.getElementById("up_two").style.borderBottomColor = "#c9f0fe"
		document.getElementById("up_three").style.borderBottomColor = "white"
   	}
	function HiddenDivoneThree()
   	{
		document.getElementById("up_one").style.borderBottomColor = "white"
		document.getElementById("up_two").style.borderBottomColor = "white"
		document.getElementById("up_three").style.borderBottomColor = "#c9f0fe"
   	}
</script>

<style>
	html,body{
		height:100%; width:100%;
			font-family:"Microsoft YaHei";
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
		margin-top:20px;
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
	#dv_timeover{
		width:450px; 
		height:500px; 
		background: #c9f0fe; 
		margin:0 auto; 
		padding:10px;
		border-radius: 5px;
		position:relative;
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
</body>
</html>