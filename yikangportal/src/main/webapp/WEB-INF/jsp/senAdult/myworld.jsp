<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <script src="<%=basePath%>js/viewport.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/**.css">
  <title>初始页</title>
  <style>
    *{
      margin:0;padding:0;
    }
    html,body{
      height:100%;
    }
    .nother{
      background:gray;
      opacity: 0.3;
      width:100%;
      height:100%;
      position: absolute;
      left:0;
      top:0;
      z-index: 99;
      display: none;
    }
    .box{
      width:500px;
      height:250px;
      background: blue;
      position: absolute;
      left:40%;
      top:50%;
      z-index: 100;
      display: none;
      border-radius: 50px;
      -webkit-transform:rotate(30deg);
      -o-transform:rotate(30deg);
      -ms-transform:rotate(30deg);
      -moz-transform:rotate(30deg);
      transform:rotate(30deg); 
      -webkit-animation:run 10s infinite;
      -o-animation:run 10s infinite;
      -ms-animation:run 10s infinite;
      -moz-animation:run 10s infinite;
      animation:run 10s infinite;
    }
    @keyframes run
    {
      30% {transform:rotate(0deg); } 
      70% {transform:rotate(50deg); }
    }
    @-moz-keyframes run
    {
      30% {transform:rotate(0deg); } 
      70% {transform:rotate(50deg); }
    }
    @-o-keyframes run
    {
      30% {transform:rotate(0deg); } 
      70% {transform:rotate(50deg); }
    }
    @-webkit-keyframes run
    {
      30% {transform:rotate(0deg); } 
      70% {transform:rotate(50deg); }
    }
  </style>
  <script>
    window.onload=function(){
      $(".ant").click(function(){
        $(".nother").fadeIn(1000);
        $(".box").fadeIn(1000);
      });
      $(".close").click(function(){
        $(".nother").fadeOut(1000);
        $(".box").fadeOut(1000);
      });      
    }
  </script>
</head>
  <body style="position:relative;">
    <button class="ant">点击</button>
    <div class="nother"></div>
    <div class="box" onclick="alt()">
      <input type="text" value="">
      <input class="close" type="button" value="关闭">
    </div>
  </body>
</html>