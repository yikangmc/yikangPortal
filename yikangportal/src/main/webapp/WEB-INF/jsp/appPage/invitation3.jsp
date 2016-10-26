<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
  <script src="<%=basePath%>js/viewport750.js"></script>
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>js/swiper/swiper-3.3.1.min.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath%>js/swiper/animate.min.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/activity3.css"/>
  <title>北京招聘康复治疗师啦！we want you！</title>
  <style type="text/css">
    .wrap { width: 750px; 
    		background: url('<%=basePath%>img/protal/appPage/Hiring/backgroundMag.png') no-repeat;
    		background-position: 100% 100%;
    }

    .eye span { border-color: #0faadd; }

    section { height: 100%; }
    .section1-icon 					{ width: 100%; height: 400px; position: absolute; top: -5px; }
    .section1-icon img 				{ float: left; }
    .section1-icon img:nth-child(1) { position: absolute; top: 300px; 	left: 	50px; 	
    	animation: icon1 2s infinite;
    	-webkit-animation: icon1 2.5s linear infinite; 
    }
    .section1-icon img:nth-child(2) { position: absolute; top: 152px; 	left: 	120px; 	
    	animation: icon2 2s infinite;
    	-webkit-animation: icon2 2.1s linear infinite; 
    }
    .section1-icon img:nth-child(3) { position: absolute; top: 60px; 	left: 	330px; 	
    	animation: icon3 2s infinite;
    	-webkit-animation: icon3 1.9s linear infinite; 
    }
    .section1-icon img:nth-child(4) { position: absolute; top: 152px; 	right: 	120px; 	
    	animation: icon4 2s infinite;
    	-webkit-animation: icon4 2.3s linear infinite; 
    }
    .section1-icon img:nth-child(5) { position: absolute; top: 300px; 	right: 	50px; 	
    	animation: icon5 2s infinite;
    	-webkit-animation: icon5 2s linear infinite; 
    }

    #font1 { margin: 0 auto; margin-top: 225px; }
    #font2 { margin: 0 auto; margin-top: 5px; }
    #flame { position: absolute; top: 577px; right: 80px; }

    @-webkit-keyframes 	icon1 	{0% { top: 300px; } 50% { top: 320px; } 100% { top: 300px; } }
    @keyframes 			icon1 	{0% { top: 300px; } 50% { top: 320px; } 100% { top: 300px; } }
    @-webkit-keyframes 	icon2 	{0% { top: 152px; } 50% { top: 171px; } 100% { top: 152px; } }
    @keyframes 			icon2 	{0% { top: 152px; } 50% { top: 165px; } 100% { top: 152px; } }
    @-webkit-keyframes 	icon3 	{0% { top: 60px;  } 50% { top: 77px;  } 100% { top: 60px;  } }
    @keyframes 			icon3 	{0% { top: 60px;  } 50% { top: 73px;  } 100% { top: 60px;  } }
    @-webkit-keyframes 	icon4 	{0% { top: 152px; } 50% { top: 178px; } 100% { top: 152px; } }
    @keyframes 			icon4 	{0% { top: 152px; } 50% { top: 132px; } 100% { top: 152px; } }
    @-webkit-keyframes 	icon5 	{0% { top: 300px; } 50% { top: 333px; } 100% { top: 300px; } }
    @keyframes 			icon5 	{0% { top: 300px; } 50% { top: 318px; } 100% { top: 300px; } }


  </style>
  <script type="text/javascript">
  	if (window.location.href == "http://jjkangfu.cn/appPage/invitation3") {

  	} else {
  		// window.location.href = "http://jjkangfu.cn/appPage/invitation3";
  	}
  </script>
</head>
<body>
<img style="opacity: 0; position: absolute;" src="<%=basePath%>img/protal/appPage/Hiring/TChart.jpg"/>
<div class="wrap swiper-container swiper-container-vertical swiper-container-android">
    <div class="swiper-wrapper">
        <section  class="swiper-slide swiper-slide1 swiper-slide-active" style="transform: translate3d(0px, 0px, 0px) scaleY(1);">
          <div class="section1-icon">
          	<img src="<%=basePath%>img/protal/appPage/Hiring/icon1.png">
          	<img src="<%=basePath%>img/protal/appPage/Hiring/icon2.png">
          	<img src="<%=basePath%>img/protal/appPage/Hiring/icon3.png">
          	<img src="<%=basePath%>img/protal/appPage/Hiring/icon4.png">
          	<img src="<%=basePath%>img/protal/appPage/Hiring/icon5.png">
          </div>
          <img id="flame" src="<%=basePath%>img/protal/appPage/Hiring/flame.gif">
          <img id="font1" src="<%=basePath%>img/protal/appPage/Hiring/font1.png">
        </section>
        <section  class="swiper-slide swiper-slide3">
          <img id="font2" src="<%=basePath%>img/protal/appPage/Hiring/font2.png">
        </section>
    </div>
  	<div class="eye swiper-pagination">
  	</div>  
</div>

<script src="<%=basePath%>js/swiper/swiper-3.3.1.jquery.min.js"></script>
<script src="<%=basePath%>js/swiper/swiper.animate1.0.2.min.js"></script>
<script src="<%=basePath%>js/activity3.js"></script>
</body>
</html>