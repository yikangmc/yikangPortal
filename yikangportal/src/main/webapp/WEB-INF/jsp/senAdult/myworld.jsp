<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
  <script src="<%=basePath%>js/viewport.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
  <title>初始页</title>
</head>
  <body>
    <div ng-app="" ng-init="quantity=1;price=5">

    <h2>价格计算器</h2>

    数量： <input type="number"  ng-model="quantity">
    价格： <input type="number" ng-model="price">

    <p><b>总价：</b> {{ quantity * price }}</p>

    </div>
</html>