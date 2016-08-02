<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
  <script src="<%=basePath%>js/viewport750.js"></script>
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>js/swiper/swiper-3.3.1.min.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath%>js/swiper/animate.min.css">
  <title>ionicTest -- YKService</title>
</head>
<style>
*{ margin:0; padding:0; }
html,body{ height:100%;}
body{ font-family:"microsoft yahei"; }

.swiper-container {
  background-color: #0faadd;
  width: 100%;
  height: 100%;
}
img{
  display:block;
}
.swiper-pagination-bullet {
width: 6px;
height: 6px;
background: #fff;
opacity: .4;
}
.swiper-pagination-bullet-active {
opacity: 1;
}
@-webkit-keyframes start {
  0%,30% {opacity: 0;-webkit-transform: translate(0,10px);}
  60% {opacity: 1;-webkit-transform: translate(0,0);}
  100% {opacity: 0;-webkit-transform: translate(0,-8px);}
}
@-moz-keyframes start {
  0%,30% {opacity: 0;-moz-transform: translate(0,10px);}
  60% {opacity: 1;-moz-transform: translate(0,0);}
  100% {opacity: 0;-moz-transform: translate(0,-8px);}
}
@keyframes start {
  0%,30% {opacity: 0;transform: translate(0,10px);}
  60% {opacity: 1;transform: translate(0,0);}
  100% {opacity: 0;transform: translate(0,-8px);}
}
.ani{
  position:absolute;
  }
.txt{
  position:absolute;
}
#array{
  position:absolute;z-index:999;-webkit-animation: start 1.5s infinite ease-in-out;
}
</style>
<body>
<div class="swiper-container swiper-container-vertical swiper-container-android">
    <div class="swiper-wrapper">
        <section class="swiper-slide swiper-slide1 swiper-slide-active" style="height: 100%; opacity: 1; transform: translate3d(0px, 0px, 0px) scaleY(1);">
          123
        </section> 
        <section class="swiper-slide swiper-slide2 swiper-slide-next" style="height: 100%; opacity: 0.5;">
          123
        </section>
        <section class="swiper-slide swiper-slide3" style="height: 100%; opacity: 0.5;">
          123
        </section>
        
        
        
    </div>
  <div class="swiper-pagination">
  </div>  
</div>

<script src="<%=basePath%>js/swiper/swiper-3.3.1.jquery.min.js"></script>
<script src="<%=basePath%>js/swiper/swiper.animate1.0.2.min.js"></script>
<script>
    scaleW = window.innerWidth / 320;
    scaleH = window.innerHeight / 480;
    var resizes = document.querySelectorAll('.resize');
    for (var j = 0; j < resizes.length; j++) {
      resizes[j].style.width = parseInt(resizes[j].style.width) * scaleW
          + 'px';
      resizes[j].style.height = parseInt(resizes[j].style.height)
          * scaleH + 'px';
      resizes[j].style.top = parseInt(resizes[j].style.top) * scaleH
          + 'px';
      resizes[j].style.left = parseInt(resizes[j].style.left) * scaleW
          + 'px';
    }

    var mySwiper = new Swiper(
        '.swiper-container',
        {
          direction : 'vertical',
          pagination : '.swiper-pagination',
          //virtualTranslate : true,
          mousewheelControl : true,
          onInit : function(swiper) {
            swiperAnimateCache(swiper);
            swiperAnimate(swiper);
          },
          onSlideChangeEnd : function(swiper) {
            swiperAnimate(swiper);
          },
          onTransitionEnd : function(swiper) {
            swiperAnimate(swiper);
          },

          watchSlidesProgress : true,

          onProgress : function(swiper) {
            for (var i = 0; i < swiper.slides.length; i++) {
              var slide = swiper.slides[i];
              var progress = slide.progress;
              var translate = progress * swiper.height / 4;
              scale = 1 - Math.min(Math.abs(progress * 0.5), 1);
              var opacity = 1 - Math.min(Math.abs(progress / 2),
                  0.5);
              slide.style.opacity = opacity;
              es = slide.style;
              es.webkitTransform = es.MsTransform = es.msTransform = es.MozTransform = es.OTransform = es.transform = 'translate3d(0,'
                  + translate
                  + 'px,-'
                  + translate
                  + 'px) scaleY(' + scale + ')';

            }
          },

          onSetTransition : function(swiper, speed) {
            for (var i = 0; i < swiper.slides.length; i++) {
              es = swiper.slides[i].style;
              es.webkitTransitionDuration = es.MsTransitionDuration = es.msTransitionDuration = es.MozTransitionDuration = es.OTransitionDuration = es.transitionDuration = speed
                  + 'ms';

            }
          },
        })
</script>
</body>
</html>