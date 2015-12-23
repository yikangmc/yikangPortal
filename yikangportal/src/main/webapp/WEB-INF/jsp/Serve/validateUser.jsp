<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$().ready(function(){
	    $('#loginForm').bootstrapValidator({
	        message: '请填写规范的数据！',
	        fields: {
	        	userName:{
	                validators: {
	                    notEmpty: {
	                        message: '用户名不能为空！'
	                    }
	                }
	            }
	        }
	    });
	});
</script>
</head>
<body>
	<div class="container">
		<form id="loginForm">
			<div class="row">
				<div class="col-md-12">
					<input  name="userName" type="text">
				</div>
			</div>
		</form>
	</div>
</body>
</html>