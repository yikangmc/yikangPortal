<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <script src="<%=basePath%>js/viewport.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
  <title>初始页</title>
</head>
  <body>
    <div>
      <a id="onMenuShareTimeline" style="color: red;">123</a>
    </div>

    <script type="text/javascript">
      $('#onMenuShareTimeline').click(function () {
        alert(1);   
   // wx.onMenuShareTimeline({
   //    title: '百度',
   //    link: 'http://www.baidu.com',
   //    imgUrl: 'http://img3.douban.com/view/movie_poster_cover/spst/public/p2166127561.jpg',
   //    trigger: function (res) {
   //      alert('用户点击分享到朋友圈');       
   //    },
   //    success: function (res) {
   //      alert('已分享');
   //      location.href='http://www.baidu.com'
        
                
   //    },
   //    cancel: function (res) {
   //      alert('已取消');
   //    },
   //    fail: function (res) {
   //      alert(JSON.stringify(res));
   //    }
   //  });
    alert('已注册获取“分享到朋友圈”状态事件');
 });
    </script>
  </body>
</html>