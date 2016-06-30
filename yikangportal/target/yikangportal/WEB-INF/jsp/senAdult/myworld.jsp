<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script src="<%=basePath%>js/viewport750.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/protal/publicStyle.css">
<style type="text/css">
	a {
		color: 333;
	}
</style>
<body>
	<a href="" onclick="foo();"></a>
</body>
<script type="text/javascript">
function o(){
	var name = "fucks";

	this.a = function(){
		return {
			getName : function() { 
				return name;
			}
		}
	}

	this.b = function(){
		return {
			setName : function(newName) {
				name = newName;
			}
		}
	}

}

var fun = new o();
var a = fun.a();
var b = fun.b();
b.setName("小黑");
document.writeln(a.getName());
</script>
</html>