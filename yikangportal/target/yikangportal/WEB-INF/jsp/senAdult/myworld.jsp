<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <!-- <script src="<%=basePath%>js/viewport.js"></script>
    <script src="<%=basePath%>js/senAdult.js"></script>-->
    <title>测试页面</title>
    <style type="text/css">
        * { margin: 0; padding: 0;}
        ul li { list-style-type: none; margin: 0; padding: 0; }

        /*.bnr { width: 700px; height: 340px; background: #999; margin: 0 auto; margin-top: 30px; overflow: hidden; }
        .bnr li { background: red; float: left; width: 700px; height: 100%; text-align: center; 
            line-height: 340px; font-size: 40px; color: #fff; }
        .bnr .mag { margin: 0; width: 2800px; }
        button { width: 70px; height: 32px; border: 0; font-size: 20px; color: 000; }

        .bottom { width: 200px; margin: 0 auto; text-align: center; }*/
    </style>
    <script type="text/javascript">
        var e = "13240164027";
        var topphones = e.substring(0, 3);
        var bottomphones = e.substring(7, 11);
        alert("号码为:"+topphones+"****"+bottomphones+"的号码注册成功！")
    </script>
</head>
    <body>
        <!-- <div class="bnr">
            <ul class="mag">
                <li>1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
            </ul>
        </div>
        <div class="bottom">
            <button id="btn1"> < </button>
            <button id="btn2"> > </button>
        </div> -->
        <hr />
    </body>
    <script type="text/javascript">
    window.onload = function() {
        var mag = document.getElementsByTagName("li");
        for (var i = 0; i < mag.length; i++) {

        };
    }
    </script>
</html>