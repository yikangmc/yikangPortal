<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta name="viewport" content="target-densitydpi=device-dpi, user-scalable=no">
  <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
  <meta charset="UTF-8"/>
  <script src="<%=basePath%>js/viewport750.js"></script>
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>js/swiper/swiper-3.3.1.min.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath%>js/swiper/animate.min.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/activity3.css"/>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/launch.css"/>
  <title>朋友，你压力大吗?</title>

  <script>
        // if (window.location.href == "http://jjkangfu.cn/appPage/activity3") {
        
        // } else {
        //         window.location.href = "http://jjkangfu.cn/appPage/activity3";
        // }
  </script>

  <style type="text/css">
  	html * { outline: 0; -webkit-text-size-adjust: none; -webkit-tap-highlight-color: rgba(0,0,0,0);}  
    .main { width: 750px; }
    section { height: 100%; }

    section:nth-of-type(1) { 
      background: url('<%=basePath%>img/protal/activity/Home/backgroundOfHome1.gif') no-repeat;
      background-color: #157496;
    }
    section:nth-of-type(2) { 
      background: url('<%=basePath%>img/protal/activity/School/backgroundOfSchool.png') no-repeat;
      background-color: #d69b59;
    }
    section:nth-of-type(3) { 
      background: url('<%=basePath%>img/protal/activity/Company/backgroundOfCompany.png') no-repeat;
      background-color: #9cddff;
    }
    
	.jiantou-img{
            position: absolute;
            left: 45%;
            bottom: 10%;
    }       
    .blw-img{
            position: absolute;
            left: 36%;
            bottom: 6%;
    }
    .ask-btn{
            display: block;
            width: 30%;
            height: 10%;
            position: absolute;
            left: 15%;      
            bottom: 27%;
    
    }       
    .ask-btn img,.again-btn img{
            width: 100%;
    }
    .again-btn{
            display: block;
            width: 30%;
            height: 10%;
            position: absolute;
            right: 15%;
            bottom: 27%;

    }
    .lqrcode{
            width: 50%;
            position: absolute;
            left: 50%;
            top: 15%;
            margin-left: -25%;
    }
    .lqrcode img{
            width: 100%;
    }

	#codes {
		position: absolute;
		top: 880px;
		left: 270px;
	}
	.music {
		z-index: 9999;
		width: 40px; height: 40px;
		position: absolute;
		top: 60px; right: 48px;
		animation: musicLoad 7s infinite;
		-webkit-animation: musicLoad 7s linear infinite;
	}

	@keyframes musicLoad {
		from 	{ transform:rotate(0deg) }
		to 		{ transform:rotate(360deg) }
	}
	@-webkit-keyframes musicLoad {
		from 	{ transform:rotate(0deg) }
		to 		{ transform:rotate(360deg) }
	}

	#abs-test {
		position: absolute;
		top: 0px;
		left: 0px;
		width: 100%;
		height: 52%;
		opacity: .0;
	}

	#models {
		position: absolute; top: 0px; left: 0px;
		z-index: 999;
		width: 100%; height: 100%;
		background-color: #000; opacity: .8;
	}
	#models img {
		margin: 20 auto;
		margin-top: 40px;
	}
  </style>
  <script>
	function playFn(obj){
		var audio = document.getElementById('audio');
    	if (document.getElementById('btnPlay').value == "播放") {
    		audio.play();
    		audio.loop = true;
    		document.getElementById('btnPlay').value = "暂停"
        	document.getElementById('musicPlay').src = "<%=basePath%>img/protal/appPage/activity/music/musicClose.png"

    　　	}else{
        　　 audio.pause();
        　　 document.getElementById('btnPlay').value = "播放"
        	document.getElementById('musicPlay').src = "<%=basePath%>img/protal/appPage/activity/music/musicOpen.png"
    　　	}

    	if (obj == 1) {
    		audio.play();
    		audio.loop = true;
    	}
　　}
   	</script>
</head>
<body>
<div class="music">
	<audio id="audio">
	　　<source src="http://sc.111ttt.com/up/mp3/73262/46444AE0C73A8C8B4DCE6B2A1CE33302.mp3" type="audio/mpeg">
	</audio>
	<input id="btnPlay" type="hidden" value="播放" />
	<img id="musicPlay" src="<%=basePath%>img/protal/appPage/activity/music/musicClose.png" onclick="playFn(1)">
</div>
<div class="main swiper-container swiper-container-vertical swiper-container-android">
    <div class="swiper-wrapper">
        <section  class="swiper-slide swiper-slide1 swiper-slide-active" 
                  style="transform: translate3d(0px, 0px, 0px) scaleY(1);">
          <img class="mag" src="<%=basePath%>img/protal/activity/Home/animat1.png">
          <!-- <div class="tvs">
            <img src="<%=basePath%>img/protal/activity/Home/tv1.png">
            <img src="<%=basePath%>img/protal/activity/Home/tv2.png">
            <img src="<%=basePath%>img/protal/activity/Home/tv3.png">
          </div> -->

          <!-- <div class="phone">
            <img src="<%=basePath%>img/protal/activity/Home/phone1.png">
            <img src="<%=basePath%>img/protal/activity/Home/phone2.png">
          </div> -->
        </section> 
        <section  class="swiper-slide swiper-slide2 swiper-slide-next">
          <div class="clock">
            <img src="<%=basePath%>img/protal/activity/School/Pointer.png">
            <img src="<%=basePath%>img/protal/activity/School/flys.png">
          </div>
          <div class="paper">
            <img src="<%=basePath%>img/protal/activity/School/paper1.png">
            <img src="<%=basePath%>img/protal/activity/School/paper2.png">
          </div>
          <div class="eye">
            <img src="<%=basePath%>img/protal/activity/School/eye.png">
            <img src="<%=basePath%>img/protal/activity/School/eye.png">
          </div>
        </section>
        <section  class="swiper-slide swiper-slide3">
          <img id="airplane" class="ani" 
               swiper-animate-effect="fadeInRight" swiper-animate-duration="3s" swiper-animate-delay="0.3s" 
               src="<%=basePath%>img/protal/activity/Company/airplane.png">
          <div class="books">
            <img src="<%=basePath%>img/protal/activity/Company/book1.png"><img src="<%=basePath%>img/protal/activity/Company/book2.png"><img src="<%=basePath%>img/protal/activity/Company/book3.png"><img src="<%=basePath%>img/protal/activity/Company/book4.png"><img src="<%=basePath%>img/protal/activity/Company/book5.png"><img src="<%=basePath%>img/protal/activity/Company/book6.png"><img src="<%=basePath%>img/protal/activity/Company/book7.png"><img src="<%=basePath%>img/protal/activity/Company/book8.png">
            <img id="people" src="<%=basePath%>img/protal/activity/Company/people.png">
          </div>
          <div class="fires">
            <img src="<%=basePath%>img/protal/activity/Company/fire3.png">
            <img src="<%=basePath%>img/protal/activity/Company/fire2.png">
            <img src="<%=basePath%>img/protal/activity/Company/fire1.png">
          </div>
        </section>       
        <div class="swiper-slide startcs " style="background: url('<%=basePath%>img/protal/activity/Point/img/startcs-bg.png') no-repeat; background-color: #225a77;" >	 
        		<a class="btn1" href="###"><img src="<%=basePath%>img/protal/activity/Point/img/startcs.png"/></a>		        		        		        	
        		<img class="rockets ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="1.5s" swiper-animate-delay="0.3s" src="<%=basePath%>img/protal/activity/Point/img/rocket.png"/>
        		<img class="air ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="1.5s" swiper-animate-delay="0.3s" src="<%=basePath%>img/protal/activity/Point/img/air-2x.png"/>       		
        </div>		        
        <div class="swiper-slide question" style="background: url('<%=basePath%>img/protal/activity/Point/img/bg-2x.png') no-repeat; background-color: #225a77;">	        	        	      				        	
	        	<div class="question-1">
	        		<p class="fback"><</p>
	        		<h2>1、觉得比平常容易紧张和着急</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-2">
	        		<p class="back"><</p>
	        		<h2>2、无缘无故地感到害怕  </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-3">
	        		<p class="back"><</p>
	        		<h2>3、容易心里烦乱或觉得惊恐 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-4">
	        		<p class="back"><</p>
	        		<h2>4、觉得可能要发疯 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-5">
	        		<p class="back"><</p>
	        		<h2>5、觉得一切都很好,也不会发生什么不幸</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-6">
	        		<p class="back"><</p>
	        		<h2>6、手脚发抖打颤  </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-7">
	        		<p class="back"><</p>
	        		<h2>7、因为头痛、头颈痛和背痛而苦恼  </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-8">
	        		<p class="back"><</p>
	        		<h2>8、感觉容易衰弱和疲乏 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-9">
	        		<p class="back"><</p>
	        		<h2>9、觉得心平气和,并且容易安静地坐着</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-10">
	        		<p class="back"><</p>
	        		<h2>10、觉得心跳得很快</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-11">
	        		<p class="back"><</p>
	        		<h2>11、因为一阵阵头晕而苦恼 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-12">
	        		<p class="back"><</p>
	        		<h2>12、有晕倒发作,或觉得要晕倒似的</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-13">
	        		<p class="back"><</p>
	        		<h2>13、吸气呼气都感到很容易 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-14">
	        		<p class="back"><</p>
	        		<h2>14、手脚麻木和刺痛 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-15">
	        		<p class="back"><</p>
	        		<h2>15、因为胃痛和消化不良而苦恼</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-16">
	        		<p class="back"><</p>
	        		<h2>16、常常要小便</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>
	        	</div>
	        	<div class="question-17">
	        		<p class="back"><</p>
	        		<h2>17、手常常是干燥温暖的 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-18">
	        		<p class="back"><</p>
	        		<h2>18、脸红发热 </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-19">
	        		<p class="back"><</p>
	        		<h2>19、容易入睡并且睡得很好  </h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="next-que"><img src="<%=basePath%>img/protal/activity/Point/img/click.png"/></p>

	        	</div>
	        	<div class="question-20">
	        		<p class="back"><</p>
	        		<h2>20、做噩梦</h2>
	        		<ul class="list-sub">
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>没有或很少时间</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>有时</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>经常</li>
	        			<li><span><img src="<%=basePath%>img/protal/activity/Point/img/select.png"/></span>绝大部分或全部时间</li>
	        		</ul>
	        		<p class="last-que"><img src="<%=basePath%>img/protal/activity/Point/img/last-click.png"/></p>
	        		
	        	</div>
		        		
		        	<!--<p class="next-que"><img src="img/click.png"/></p>-->
		        	
        </div>
        <div class="swiper-slide share" style=" background: url('<%=basePath%>img/protal/activity/Point/img/background.png') no-repeat 100%; background-color: #225a77;" >	 
        	<img src="<%=basePath%>img/protal/activity/Point/img/share-2x.png"/>
        </div>
        <div class="swiper-slide main-res" style="background: url('<%=basePath%>img/protal/activity/Point/img/background.png') no-repeat; background-color: #225a77;">		
					<img class="airship ani" swiper-animate-effect="slideInDown" swiper-animate-duration="1s" swiper-animate-delay="0s"  src="<%=basePath%>img/protal/activity/Point/img/airship-3x.png"/>
					<div class="main-result ani" swiper-animate-effect="lightSpeedIn" swiper-animate-duration="0.8s" swiper-animate-delay="1s">
						<div class="result-1">
							<img src="<%=basePath%>img/protal/activity/Point/img/result1.png" alt="" />
						</div>
						<div class="result-2">
							<img src="<%=basePath%>img/protal/activity/Point/img/result2.png" alt="" />
						</div>
						<div class="result-3">
							<img src="<%=basePath%>img/protal/activity/Point/img/result3.png" alt="" />
						</div>
						<div class="result-4">
							<img src="<%=basePath%>img/protal/activity/Point/img/result4.png" alt="" />
						</div>
					</div>
					<img class="jiantou-img  ani" swiper-animate-effect="bounceInUp" swiper-animate-duration="1.3s" swiper-animate-delay="1s" src="<%=basePath%>img/protal/activity/Point/img/jiantou.png"/>
					<img class="blw-img  ani" swiper-animate-effect="bounceInUp" swiper-animate-duration="1.3" swiper-animate-delay="1.3s" src="<%=basePath%>img/protal/activity/Point/img/blw.png"/>
					<!-- <div class="lqrcode ani" swiper-animate-effect="zoomIn" swiper-animate-duration="0.5s" swiper-animate-delay="2s">
						<img style="z-index: 99999;bottom: 300px;left:100px; position: absolute;" src="<%=basePath%>img/qrcode.png"/>
						<img src="<%=basePath%>img/protal/activity/Point/img/Bitmap.png"/>
					</div>
					<a class="ask-btn ani" id="download" swiper-animate-effect="bounceIn" swiper-animate-duration="0.5s" swiper-animate-delay="3s" href="http://jjkangfu.cn/index/productFooter"><img src="<%=basePath%>img/protal/activity/Point/img/ask-2x.png"/></a> -->
			
		</div>	
		<div class="swiper-slide qrcode-app" style="background:url(<%=basePath%>img/protal/activity/Point/img/background.png) no-repeat; background-color: #225a77;">
			<img id="abs-test" src="<%=basePath%>img/protal/activity/Point/img/qrcode.png">
			<div class="lqrcode ani" swiper-animate-effect="zoomIn" swiper-animate-duration="0.5s" swiper-animate-delay="0.5s">
				<img src="<%=basePath%>img/protal/activity/Point/img/Bitmap.png"/>
				<img style="width: 90%;margin-top: 20px;" src="<%=basePath%>img/protal/activity/Point/img/qrcode.png"/>
			</div>
			<a class="ask-btn ani" id="download" href="https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8" swiper-animate-effect="bounceInLeft" swiper-animate-duration="1s" swiper-animate-delay="1s" href="###"><img src="<%=basePath%>img/protal/activity/Point/img/askbtn.png"/></a>
			<a class="again-btn ani"  swiper-animate-effect="bounceInRight" swiper-animate-duration="1s" swiper-animate-delay="1s" href="###"><img src="<%=basePath%>img/protal/activity/Point/img/againbtn.png"/></a>
		</div>
				
		   
    </div>
  <div class="swiper-pagination">
  </div>  
</div>

<script src="<%=basePath%>js/swiper/swiper-3.3.1.jquery.min.js"></script>
<script src="<%=basePath%>js/swiper/swiper.animate1.0.2.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="<%=basePath%>js/views/appPage/main.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
/*
 *	初始化
 */
playFn(1);


if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {

	$('#download').attr("href","https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8");
	$('#download').click(function (){
		iosHttps()
		$('#models').click(function (){$(this).remove()})
	})

} else if (/(Android)/i.test(navigator.userAgent)) {
	$('#download').attr("href","http://www.wandoujia.com/apps/com.yikang.app.yikangserver?utm_source=wechat-session&utm_medium=share&utm_campaign=routine");

} else if (/(Windows)/i.test(navigator.userAgent)) {

	$('#download').attr("href","http://jjkangfu.cn/index/productFooter");

} else {

	$('#download').attr("href","http://jjkangfu.cn/index/productFooter");

}

function iosHttps() {
	alert('ios')
	$("body").append("<div id='models'><img src='<%=basePath%>img/protal/appPage/activity/windowPrompt.png'></div>");
}
wx.config({
  debug: false,
  appId: 'wxc43b17327cf5b165',
  timestamp: '${senAdult.timestamp}',
  nonceStr: '${senAdult.nonceStr}',
  signature: '${senAdult.signature}',
  jsApiList: [
    'checkJsApi',
    'onMenuShareTimeline',
    'onMenuShareAppMessage'
  ]
});
//alert(location.href)
wx.ready(function () {
  	// 1 判断当前版本是否支持指定 JS 接口，支持批量判断
	$('#checkJsApi').click(function () {
    	wx.checkJsApi({
	     	jsApiList: [
	        	'getNetworkType',
	        	'previewImage'
	      	],
	      	success: function (res) {
	        //alert(JSON.stringify(res));
	    	}
		})
	});

// 2. 分享接口
  
 	$('.last-que').click(function() {
	    wx.onMenuShareAppMessage({
	    	title: '朋友，你压力大吗',
	      	desc: '',
	      	link: 'http://jjkangfu.cn/appPage/activity3',                
	      	imgUrl: '<%=basePath%>img/protal/appPage/Minute.png',
	      	trigger: function (res) {
	 		
	      	},
	      	success: function (res) {
	      		mySwiper.slideTo(6, 1000, true);
	      		setCookie('Num',Num,7);
				if(Num <50){
	                $('.result-1').show();
	                $('.result-1').siblings().hide();
	        	}else if(50<= Num && Num<=59){
	                $('.result-2').show();
	                $('.result-2').siblings().hide();
	        	}else if(60<= Num && Num <=69){
	                $('.result-3').show();
	                $('.result-3').siblings().hide();
	        	}else if(Num>69){
	                $('.result-4').show()
	                $('.result-4').siblings().hide();	        	}
	      	},
	      	cancel: function (res) {
	        	alert('已取消');
	      	},
	      	fail: function (res) {
	        	//错误区
	    	}
    	});
	});
  	// 2.2 监听“分享到朋友圈”按钮点击、自定义分享内容及分享结果接口
	$('.last-que').click(function () {   
   		wx.onMenuShareTimeline({
	      	title: '朋友，你压力大吗',
	      	link: 'http://jjkangfu.cn/appPage/activity3',
	      	imgUrl: '<%=basePath%>img/protal/appPage/Minute.png',
	      	trigger: function (res) {
	               
	      	},
	      	success: function (res) {
	         	mySwiper.slideTo(6, 1000, true);
	         	setCookie('Num',Num,7);
	        	if(Num <50){
	                $('.result-1').show();
	                $('.result-1').siblings().hide();                   
	        	}else if(50>= Num && Num<=59){
	                $('.result-2').show();
	                $('.result-2').siblings().hide();                  
	        	}else if(60>= Num && Num <=69){
	                $('.result-3').show();
	                $('.result-3').siblings().hide();        
	        	}else if(Num>69){
	                $('.result-4').show()
	                $('.result-4').siblings().hide();                 
	        	}
	      	},
	      	cancel: function (res) {
	        	alert('您还没有分享哟：-）');
	      	},
	      	fail: function (res) {
	        	//alert(JSON.stringify(res));
	      	}
    	});
 	});
})
   	var number = 0; //总分
    var Num=0;
    function Dictionary(){

      	this.data = new Array();

      	this.put    =   function(key, val){
                        this.data[key] = val;
                  	};

      	this.get    =   function(key){
                        return this.data[key];
                  	};

      	this.update =   function(key, val){
                        this.data[key] = val;
                  	};

      	this.size   =   function(){
                        return this.data.length;
                    };
      	this.score  =   function(score){
                        number += score;
                    };
      	this.delete =   function(key){
                        return this.data.splice(key, 1);
      				};
    }
    var _d = new Dictionary();
        $.deleteData = function(key) {
      	_d.delete(key);
		//alert(_d.size());
   	}
    // 
    // 下个题目
    // 
    
    $.InsertDatas = function(_iptData){
        i = _d.size();
      	_d.put(i ,_iptData);
    };
	// 
    // 分数统计
    // 
    $.Score = function() {
      	var style = "A",
          	none  = "B";
      	for (var i = 0; i < _d.size(); i++) {
        	switch(i) { 
	          	case 4:   funScore(style, i); break; 
	          	case 8:   funScore(style, i); break; 
	          	case 12:  funScore(style, i); break; 
	          	case 16:  funScore(style, i); break; 
	          	case 18:  funScore(style, i); break; 
	          	default:  funScore(none, i); 
        	}
      	}
      	Num = Math.round(number*1.25);  
      	return Num;
      	number = 0;   
    }   

    $.answerUpdate = function(key, val){
      	_d.update(key, val); 
 	};
        
    function funScore(style, num) {
      	if ("A" == style) {
          	if (_d.get(num) == "A"){_d.score(4)} 
          	else if (_d.get(num) == "B"){_d.score(3)} 
          	else if (_d.get(num) == "C"){_d.score(2)}
          	else if (_d.get(num) == "D"){_d.score(1)}
      	} else {
          	if(_d.get(num) == "A"){_d.score(1)} 
          	else if (_d.get(num) == "B"){_d.score(2)} 
          	else if (_d.get(num) == "C"){_d.score(3)}
          	else if (_d.get(num) == "D"){_d.score(4)}
      	}
    }
    	$('.result-1').siblings('div').hide();
        
   		$('.btn1').click(function(){
         	mySwiper.slideTo(4, 1000, true);
        });
        $('.question-1').siblings('div').hide();
        var Index='';
        $('.list-sub li').click(function(){             
			//	alert(imgObj.attr("src",''))
           	$(this).find('img').attr("src",'<%=basePath%>img/protal/activity/Point/img/selected.png').parent('span').parent('li').addClass('imgChange');
           	$(this).siblings('li').find('img').attr("src",'<%=basePath%>img/protal/activity/Point/img/select.png');
           	$(this).siblings('li').removeClass();
          	Index = $(this).index()+1;      
            if(Index==1){
                    Index = 'A';
            }else if(Index==2){
                    Index = 'B';
            }else if(Index==3){
                    Index = 'C';
            }else if(Index==4){
                    Index = 'D';
            }       
        });     
		$('.next-que').click(function(){
            if($(this).parent('div').find('li').hasClass('imgChange')){
                for(var i =0;i<4;i++){
                    if($(this).parent('div').find('img').eq(i).attr('src')=='<%=basePath%>img/protal/activity/Point/img/selected.png'){
						//$(this).parent('div').find('img').eq(i).addClass('imgChange')
                        $(this).parent('div').hide();
                        $(this).parent('div').next('div').show();                               
                    }
                }                       
                var N = $(this).parent('div').index();
                $.answerUpdate(N,Index);
            }else{                  
                alert('您还没有选择答案')
            }
        });
        
        $('.last-que').click(function(){
			//mySwiper.slideTo(5, 1000, true);
            var N = $(this).parent('div').index();
            if($(this).parent('div').find('li').hasClass('imgChange')){
                mySwiper.slideTo(5, 1000, true);
                $.answerUpdate(N,Index);
                $.Score();      
            }else{
               	alert('您还没有选择答案');		
            }
        });
        $('.back').click(function(){                            
                $(this).parent('div').find('li').removeClass();
                $(this).parent('div').find('li').find('img').attr("src",'<%=basePath%>img/protal/activity/Point/img/select.png');
                var M = $('question div').index();
                $.deleteData(M);
                $(this).parent('div').hide();
                $(this).parent('div').prev('div').show();                       
        });
        $('.fback').click(function(){                   
                $(this).parent('div').show();
                alert('这是第一个哟')
        });
        scaleW=window.innerWidth/320;
        scaleH=window.innerHeight/480;
        var resizes = document.querySelectorAll('.resize');
        for (var j=0; j<resizes.length; j++) {
            resizes[j].style.width=parseInt(resizes[j].style.width)*scaleW+'px';
            resizes[j].style.height=parseInt(resizes[j].style.height)*scaleH+'px';
            resizes[j].style.top=parseInt(resizes[j].style.top)*scaleH+'px';
            resizes[j].style.left=parseInt(resizes[j].style.left)*scaleW+'px'; 
       	}
        var mySwiper = new Swiper ('.swiper-container', {
            direction: 'vertical',
            loop: false,
            noSwiping : true,       
            mousewheelControl : true,
            watchSlidesProgress: false,
            nextButton:'.swiper-button-next',
          	onInit: function(swiper){ //Swiper2.x的初始化是onFirstInit
                    swiperAnimateCache(swiper); //隐藏动画元素 
                    swiperAnimate(swiper); //初始化完成开始动画
                  }, 
                  onSlideChangeEnd: function(swiper){ 
                    swiperAnimate(swiper); //每个slide切换结束时也运行当前slide动画
                  } 
		//      onTransitionEnd: function(swiper){
		//      	swiperAnimate(swiper);
		//      },
        });   
        $('.again-btn').click(function(){
			 window.location.reload();
			 removeCookie('Num');
		})
		//设置cookie
	function setCookie(name,value,iDay){
		var oDate = new Date();
		oDate.setDate(oDate.getDate()+iDay);
		document.cookie = name+"="+value+";expires="+oDate;
	}
	
	//使用cookie
	function getCookie(name){
		var arr = document.cookie.split("; ");
		for(var i=0;i<arr.length;i++){
			var arr2 =  arr[i].split("=");
			if(arr2[0]==name){
				return arr2[1];
			}
		}
		return "";
		
	}
	//删除cook
	function removeCookie(name){
		setCookie(name,"",-1);
	}
	getCookie('Num');
	function checkCookie(){
		if(getCookie('Num') != ''){
			mySwiper.slideTo(6, 1000, true);
			if(getCookie('Num') <50){
			$('.result-1').show();
			$('.result-1').siblings().hide();			
//			alert(Num) 			
		}else if(50>= getCookie('Num') && getCookie('Num')<=59){
			$('.result-2').show();
			$('-.result-2').siblings().hide();			
//			alert(Num)			
		}else if(60>= getCookie('Num') && getCookie('Num') <=69){
			$('.result-3').show();
			$('.result-3').siblings().hide();			
//			alert(Num)			
		}else if(getCookie('Num')>69){
			$('.result-4').show()
			$('.result-4').siblings().hide();		
//			alert(Num)			
		}	
		}else{
			return''
		}
		console.log(getCookie('Num'))
	}

checkCookie(); 
</script>
</body>
</html>