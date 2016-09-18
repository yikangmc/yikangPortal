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
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/SenAdult.css">
    <title>HTML5 - 前端个人简历</title>
    <style type="text/css">
        html { background-color: #999; }
        body { background: url('<%=basePath%>img/testbackground.jpg'); background-position: center; }
    </style>
</head>

    <body><div id="wrap">

        <div class="Page Page-style">
            <div class="Title">
                个<br>人<br>简<br>历
            </div>
            <p class="p-stl">个人信息</p>
            姓 名：  姜文皓<br>
            性 别：  男<br>
            电 话：  13240164027<br>
            邮 箱：  jwh506286238@126.com<br><br>

            <p class="p-stl">求职意向</p>
            工作性质：全职     申请职务：web前端  <br><br>

            <p class="p-stl">工作经验</p>
            2015/ 7  至今     易康美辰健康科技(北京)有限公司       web前端<br><br>

            <p class="p-stl">个人能力</p>
            具备独立,快速完成H5网页、手机端页面、实现产品要求的能力。<br>
            具备Java后台、数据库的相关的基础知识。<br><br>

            <p class="p-stl">职业技能</p>
            1:熟练使用 HTML5、CSS3、JavaScript jQuery 快速搭建页面。<br>
            2:熟练AJAX，等jQuery插件。<br>
            3: 熟悉Bootstrap ，Angularjs 等常用插件及框架。<br>
            4: 熟悉后端工作逻辑，SpringMVC，SSH等框架。<br>
            5: 熟悉Linux操作基本操作和Tomcat服务器的使用和运用，有GitHub操作经验。<br>
            6. 熟练Java基础(有后端开发经验)。<br><br>

            <p class="p-stl">自我评价</p>
            易融入群体，善于表达，合作交流，有较好的编程习惯，有良好解决问题的思维，容易接受新的技术。<br><br>

            <p class="p-stl">项目经验</p>
            <div class="pulls">
            【佳佳康复】 PC端 手机端<br>
                项目简介：提供优质的线上医疗咨询<br>
                负责部分：<br>
                <p class="p-tit">PC</p>
                &nbsp; &nbsp; 上线<br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/">官网</a><br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/index/productFooter">产品</a><br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/index/declare">关于</a><br><br>
                
                &nbsp; &nbsp; 未上线<br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/home/">扫码</a><br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/appPage/editorOnline">扫码编辑</a><br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/index/social">小佳说</a><br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/index/socialDetails">小佳说详情</a><br><br>

                <p class="p-tit">手机</p> 
                &nbsp; &nbsp; 线上<br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/forumPost/majorsAnswer">专业帖分享</a><br><br>
                &nbsp; &nbsp; 未上线<br>
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/forumPost/activity">活动帖</a><br>    
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/forumPost/lablePost">详情帖</a><br>  
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/forumPost/detailsAnswer">回答详情页</a><br>  
                &nbsp; &nbsp; &nbsp; &nbsp;<a target="view_window" href="http://jjkangfu.cn/forumPost/userAnswer">问答问题帖</a><br><br>
            </div>
        </div>

        <div class="Page Page-style">
            <div class="Title">
            </div>

        </div>

        <div class="Page Page-style">
            1

        </div>

        </div></body>

        <script type="text/javascript">
            $(document).ready(function() {

                $('.Page').hover(function() {
                    // 鼠标悬浮时

                    $(this).addClass('Hover');


                }, function() {
                    // 鼠标离开时

                    $(this).removeClass('Hover');
                    $(this).addClass('Page-style');



                })




            })
        </script>
</html>