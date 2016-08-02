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
  <title>ionicTest -- YKService</title>
  <style type="text/css">
    .main { width: 750px; }
    section { height: 100%; }

    section:nth-of-type(1) { 
      background: url('<%=basePath%>img/protal/activity/Home/backgroundOfHome.png') no-repeat;
    }
    section:nth-of-type(2) { 
      background: url('<%=basePath%>img/protal/activity/School/backgroundOfSchool.png') no-repeat;
    }
    section:nth-of-type(3) { 
      background: url('<%=basePath%>img/protal/activity/Company/backgroundOfCompany.png') no-repeat;
    }
  </style>
</head>
<body>
<div class="main swiper-container swiper-container-vertical swiper-container-android">
    <div class="swiper-wrapper">
        <section  class="swiper-slide swiper-slide1 swiper-slide-active" 
                  style="transform: translate3d(0px, 0px, 0px) scaleY(1);">
          <img class="mag" src="<%=basePath%>img/protal/activity/Home/animat1.png">
          <div class="tvs">
            <img src="<%=basePath%>img/protal/activity/Home/tv1.png">
            <img src="<%=basePath%>img/protal/activity/Home/tv2.png">
            <img src="<%=basePath%>img/protal/activity/Home/tv3.png">
          </div>

          <div class="phone">
            <img src="<%=basePath%>img/protal/activity/Home/phone1.png">
            <img src="<%=basePath%>img/protal/activity/Home/phone2.png">
          </div>
        </section> 
        <section  class="swiper-slide swiper-slide2 swiper-slide-next">

        </section>
        <section  class="swiper-slide swiper-slide3">
          <img id="airplane" class="ani" 
               swiper-animate-effect="fadeInRight" swiper-animate-duration="3s" swiper-animate-delay="0.3s" 
               src="<%=basePath%>img/protal/activity/Company/airplane.png">
          <div class="books">
            <img id="people" src="<%=basePath%>img/protal/activity/Company/people.png">
            <img src="<%=basePath%>img/protal/activity/Company/book1.png"><img src="<%=basePath%>img/protal/activity/Company/book2.png"><img src="<%=basePath%>img/protal/activity/Company/book3.png"><img src="<%=basePath%>img/protal/activity/Company/book4.png"><img src="<%=basePath%>img/protal/activity/Company/book5.png"><img src="<%=basePath%>img/protal/activity/Company/book6.png"><img src="<%=basePath%>img/protal/activity/Company/book7.png"><img src="<%=basePath%>img/protal/activity/Company/book8.png">
          </div>
          <div class="fires">
            <img src="<%=basePath%>img/protal/activity/Company/fire3.png">
            <img src="<%=basePath%>img/protal/activity/Company/fire2.png">
            <img src="<%=basePath%>img/protal/activity/Company/fire1.png">
          </div>
        </section>
    </div>
  <div class="swiper-pagination">
  </div>  
</div>

<script src="<%=basePath%>js/swiper/swiper-3.3.1.jquery.min.js"></script>
<script src="<%=basePath%>js/swiper/swiper.animate1.0.2.min.js"></script>
<script src="<%=basePath%>js/activity3.js"></script>
</body>
</html>