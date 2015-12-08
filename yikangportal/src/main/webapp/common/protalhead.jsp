<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
	<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" 		prefix="c"%>
	<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions" 	prefix="fn"%>
	<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" 			prefix="fmt" %>
	<%@ page isELIgnored ="false"%>


	<link rel="shortcut icon" 	href="<%=basePath%>img/common/YK.png" />
	<link rel="Bookmark" 		href="<%=basePath%>img/common/YK.png" />
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	
	
	<!-- autocomplate plugin by liushuaic 2015/11/11 09:53 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/plugin/autocomplete.min/autocomplete.min.css"/>
	<script src="<%=basePath%>js/plugin/autocomplete.min/autocomplete.min.js"></script>
	
	
	
    <script type="text/javascript">
    	var basePath='<%=basePath %>';
    </script>