<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>测试</title>
    <script language="javascript">
        $(document).ready(function (){


            var nScrollHight = 0;
            var nScrollTop = 0;
            var nDivHight = $("#loading").height();

            $("#loading").scroll(function(){

                nScrollHight = $(this)[0].scrollHeight;
                nScrollTop = $(this)[0].scrollTop;

                if(nScrollTop + nDivHight >= nScrollHight) {
                    alert("刷新");

                    $.ajax({
                        url :       "http://www.baidu.com",
                        dataType :  "JSON",
                        success:function(result){
                            console.log("回收成功为" + result);

                            $('#loading').appendChild('test<br />');
                        },
                        error:function(Er){
                            console.log("请求失败" + Er)
                        }
                    });

                }
            });
        });
      </script>
    <style type="text/css">    
        #loading {
            height: 100%;
            overflow-y:auto; 
            overflow-x:hidden;
            background: #0faadd;
        }
    </style>
</head>
    <body>
         <div id="loading" style="">
            1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />
            1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />
            1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />
            1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />
            1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />1<br />
        </div>
    </body>
</html>