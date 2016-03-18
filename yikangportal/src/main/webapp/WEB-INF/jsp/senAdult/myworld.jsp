<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="<%=basePath%>js/viewport.js"></script>
    <script src="<%=basePath%>js/senAdult.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/SenAdult.css">
    <script type="text/javascript">
        document.body.style.height = view().h+"px";
        // 1
        function fnLoad(){
            var iTime = new Date().getTime();
            var oW = id("welcome");
            var arr= [""];
            var BimgLoad = true;
            var bTime = false;
            var oTimer = 0;
            setInterval(function(){
                if (new Date().getTime() -iTime >= 5000) {
                    bTime = true;
                };
                if(BimgLoad&&bTime) {
                    clearInterval(oTimer);
                    oW.style.opacity=0;
                    //问题1：调用removeClass出错 2：没有移除pageShow
                    setInterval(function(){
                        end();
                    },500)
                };
            },1000);
            function end(){
                oW.style.display="none";
            }
            // for ( var i = 0; i < arr.length; i++){
            //     var oImg = new Image();
            //     oImg.src=arr[i];
            //     oImg.onload = function(){

            //     }
            // }
        }
    </script>
    <title>纯CSS下拉框</title>
</head>
    <body>
        <section class="page pageShow" id="welcome">
            <div class="tree">
                <span class="1"><img src="<%=basePath%>img/protal/invite/yun.png" /></span>
                <img src="<%=basePath%>img/protal/indexPhone/logo.png">
            </div>
            <div id="logo">
                易康美晨健康科技（北京）健康科技有限公司
            </div>
        </section>
        <script type="text/javascript">fnLoad();</script>
        <section class="page">上传成功</section>
        <section class="page">表单页</section>
        <section class="page">新闻页</section>
        <section class="page">跳转页</section>
        <section class="page pageShow">
            <section id="tabPic">
                <ul id="picList">
                    <li><img src=""></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </section>
        </section>
    </body>
</html>