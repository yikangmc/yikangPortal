<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="<%=basePath%>js/viewport.js"></script>
    <script src="<%=basePath%>js/senAdult.js"></script>
    <title>测试页面</title>
    <style type="text/css">
        ul li { list-style-type: none; text-align: center; }
        .box {width:180px; height:320px; background:#fff; position:fixed; right: -180px; top:250px;
            border:1px solid #ddd; border-right: none; z-index: 100000; padding-top: 10px;
        }
        .box .title{ width:30px;height:105px; padding: 24 8 30 9; position: absolute;left:-31px; font-size: 14px; 
            background:#ff8484;top:120px;color:#fff;line-height:15px;text-align: center;vertical-align: middle;
            border-radius:5px 0 0 5px; cursor: pointer;
        }

        .box ul .box_tel .num{ font-size: 22px; color: #e66f70; font-weight: bold; font-family: 微软雅黑; }
        .box ul .box_tel .hot { color: #999999; font-size: 12px; }
        .box ul #btn { border-radius: 4px; background-color: #54b0fb; width: 87%; height: 32px; font-family: Arial;
            border: 0px; color: #fff; letter-spacing: 1.5px; word-spacing: 1.5px; margin-bottom: 6px;
        }
        .box ul .ewm{ font-size: 16px; color: #999999; margin-top: -4px; }
        .box #font_left { width: 50px; float: left; margin-left: 12px; text-align: left; }
        .box #font_right { width: 100px; float: right; margin-right: 12px; text-align: right; }
    </style>
    <script type="text/javascript">
        function onlicks (){
            // $(".box").animate({right:"-181"});
            // if ($(".box").css("right")=="-181px") $(".box").animate({right:"0"});
            var box = document.getElementById('box');
            if (box.style.right == "-180px") {
                for (j = 0;j < 180; j++){
                    setTimeout(function(){
                        var right = box.style.right ? box.style.right : 0;
                        right = parseInt(right) + 1;
                        box.style.right = right;
                    },j);
                }
            } else {
                for (i = 0;i < 180; i++){
                    setTimeout(function(){
                        var right = box.style.right ? box.style.right : 0;
                        right = parseInt(right) - 1;
                        box.style.right = right;
                    },i);
                }
            }
        }
    </script>
</head>
    <body>
    <!-- 悬浮窗 -->
    <div class="box" id="box">
    <a href="javascript:;" onmouseover="onlicks()"><span class="title">关闭窗口</span></a>
        <ul>
            <li class="box_tel">
                <p class="num">400-616-0909</p>
                <p class="hot">全国统一服务热线</p>
            </li>
            <li>
                <button id="btn">
                    在线QQ
                </button>
            </li>
            <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3123641388&site=qq&menu=yes">
                <img border="0" width="100%" src="<%=basePath%>img/protal/mainIndex/202.jpg" alt="我们竭诚为您服务！" title="我们竭诚为您服务！"/></a></li>
            <li class="ewm">
                <div id="font_left">扫一扫</div>
                <div id="font_right">关注佳佳康复</div></li>
        </ul>
    </div>
    </body>
</html>