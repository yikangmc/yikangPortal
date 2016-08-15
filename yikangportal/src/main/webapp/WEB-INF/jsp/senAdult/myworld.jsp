<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css">
    <title>ionicTest -- YKService</title>
</head>
<style type="text/css">  
        * {  
            margin: 0;  
            padding: 0;  
        }
        #canvasZone {  
            width: 100%;  
            height: 100%;  
            text-align: center;  
            background-color: black;  
        }  
 
        #myCanvas {  
        width: 100%;
        height: 100%; 
            /*background-color:aqua;*/  
        }  
    </style>
    <script type="text/javascript">  
        var arr = [];//保存所有的XY坐标，只为验证。实际程序中可删除。  
        var r = 4;  
        var radian;//弧度  
        var i;  
        var radianDecrement;//弧度增量  
        var time = 10;//每个点之间的时间间隔  
        var intervalId;  
        var num = 360;//分割为 360 个点  
        var startRadian = Math.PI;  
        var ctx;  
        window.onload = function () {  
            startAnimation();  
        }  
        function startAnimation() {  
            ctx = document.getElementById("myCanvas").getContext("2d");  
            //让画布撑满整个屏幕，-20是滚动条的位置，需留出。如滚动条出现则会挤压画布。  
            WINDOW_HEIGHT=document.documentElement.clientHeight-20;  
            WINDOW_WIDTH=document.documentElement.clientWidth-20;  
            ctx.width = WINDOW_WIDTH;  
            ctx.heigh = WINDOW_HEIGHT;  
            drawHeart();  
        }  
  
        function drawHeart() {  
  
            ctx.strokeStyle = "red";  
            ctx.lineWidth = 1;//设置线的宽度  
            radian = startRadian;//弧度设为初始弧度  
            radianDecrement = Math.PI / num * 2;  
            ctx.moveTo(getX(radian), getY(radian));//移动到初始点  
            i = 0;  
            intervalId = setInterval("printHeart()", time);  
        }  
        //x = 16 sin^3 t, y = (13 cos t - 5 cos 2t - 2 cos 3t - cos 4t)  
        function printHeart() {  
            radian += radianDecrement;  
            ctx.lineTo(getX(radian), getY(radian));//在旧点和新点之间连线  
            //arr.push("X:" + getX(radian) + "<br/>Y:" + getY(radian) + "<br/>");  
            i++;  
            ctx.stroke();//画线  
            if (i >= num) {  
                clearInterval(intervalId);  
                //document.getElementById("bs").innerHTML = arr.join("");//打印所有的XY坐标点。  
            }  
        }  
        function getX(t) {//由弧度得到 X 坐标  
            return 100 + r * (16 * Math.pow(Math.sin(t), 3));  
        }  
  
        function getY(t) {//由弧度得到 Y 坐标  
            return 50 - r * (13 * Math.cos(t) - 5 * Math.cos(2 * t) - 2 * Math.cos(3 * t) - Math.cos(4 * t));  
        }  
    </script>   
<body>
    <div id="canvasZone">  
        <canvas id="myCanvas"></canvas>  
    </div>  
    <div id="bs">  
    </div>    
</body>
</html>