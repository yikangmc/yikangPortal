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
	
    <script type="text/javascript">
    	var basePath='<%=basePath %>';
    </script>