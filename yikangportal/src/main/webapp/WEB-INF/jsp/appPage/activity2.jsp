<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
 	<meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<script src="<%=basePath%>js/viewport750.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<title></title>
	<style type="text/css">
	html, body {
		background-color: #f5f6f7;
	}
	.wrap {
		width: 750px;
		height: auto;
		margin: 0 auto;
		text-align: center;
		display: none;
		font-size: 30px;
		color: #646464;
		padding: 20 30 0 30;
	}

	.main { 
		line-height: 50px;
		text-align: left;
		font-size: 30px;
		color: #646464;
		word-spacing: .4px; letter-spacing: .4px; 
	}
	.main font {
		color: #0faadd;
	}

	.hover { display: block; }

	/* 下载佳佳康复 */
	.download {
		height: 100%;
		background: url('<%=basePath%>img/protal/appPage/activity/downloadBack.jpg');
		background-position: 100%;
	}
	.download #down {  
		position: relative;
		top: 644px;
	}
	#models {
		width: 100%; height: 0px;
		/*background: url('<%=basePath%>img/protal/appPage/activity/lock.jpg') no-repeat fixed;*/
		background-color: #505556;
		background-size: 100%;
	}
	</style>
</head>
	<body>
		<div class="wrap">
			<img width="100%" src="<%=basePath%>img/protal/appPage/backgroundActivity.jpg">
		</div>

		<!-- 健康圈公约 -->
		<div class="wrap">
			<div class="main">
阅读健康圈公约，和小佳一起维护社区和平！<br><br>




欢迎你来到健康圈，在这里，所有佳友与你一起敞开心扉，排忧解难，畅谈健康。小佳想，每一位佳友都期望被善意对待和尊重，我们希望这是一个充满友善、温暖和信任的健康圈。<br><br>




所以大家注意啦，下面这些行为可是会<font>视情节进行删帖、警告、封号处理的。</font><br><br>

1、任何形式的小广告；<br>

2、人身攻击、人格辱骂、色情血腥、争吵暴力和恶意裸露的帖子；<br>
3、存在抄袭、多次无逻辑刷屏的帖子；<br>

4、没有实质性内容、恶意赚取积分的帖子；<br>
5、不得违反国家法律法规及佳佳的各项规定；<br><br>



佳佳健康圈内容丰富，热度高的帖子有可能会进入最热帖子的行列哦，图文并茂的帖子机会更大哦！<br><br>




凡在健康圈中进行操作的佳友，都将视为已阅读此版健康圈公约。健康圈公约会不定期更新哦。
			</div>
		</div>




		<!-- 提问须知 -->
		<div class="wrap">
			<div class="main">
Hello，这里就是专家答疑解惑的地盘了。在奔向健康的道路上，你有没有什么困惑和疑问呢？你可以在这里把你的问题留下来，等待专家的热心解答！小佳温馨提醒广大佳友，发问时，为了让你的问题得到最快最优质的解答，建议把问题标题和问题描述写清楚哦，必要时可插入图片进行补充，把问题的原因描述清楚，专家才能帮到你！专家们也希望得到一句简单的感谢哦。 <br><br>	



烦请大家注意啦，下面这些行为可是会<font>视情节进行删除问题、警告、封号处理的。</font><br><br>

1、任何形式的小广告；<br>

2、人身攻击、人格辱骂、色情血腥、争吵暴力和恶意裸露的提问；<br>
3、多次无逻辑刷屏的提问；<br>

4、没有实质性内容、恶意赚取积分的提问；<br>
5、不得违反国家法律法规及佳佳的各项规定；<br><br>



佳佳康复，给你的健康加满分！<br><br>




凡在提问题模块中进行操作的佳友，都将视为已阅读此版提问须知。提问须知会不定期更新哦。
			</div>
		</div>



		<!-- 下载佳佳康复 -->
		<div id="models">
			<img style="margin-top: 70px;" src="">
		</div>
		<div class="wrap download">
			<a id="down">
				<img src="<%=basePath%>img/protal/appPage/activity/downloadJJKF.png">
			</a>
		</div>









		<script type="text/javascript">
			var url= window.location.href; 
			var index = url.substring(url.lastIndexOf('?') + 1);
			if (index == 2) {
				$('.wrap:eq(1)').addClass('hover')
				document.title = "健康圈公约"
			} else if (index == 3) {
				$('.wrap:eq(2)').addClass('hover')
				document.title = "提问须知"
			} else if (index == 4 || index == "4=") {
				$('.wrap:eq(3)').addClass('hover')
				document.title = "佳佳康复-居家型术后及慢性病康复护理专家"
			} else {
				$('.wrap:eq(0)').addClass('hover')
			}



			if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {

		        $('a').attr("href","https://itunes.apple.com/cn/app/jia-jia-kang-fu-gei-ni-jian/id1135697370?mt=8");
		        $('a').click(function (){ iosHttps() })

		    } else if (/(Android)/i.test(navigator.userAgent)) {

		        $('a').attr("href","http://jjkangfu.cn/common/yiKangServer-release.apk");
		        $('a').click(function (){ iosHttps() })

		    } else if (/(Windows)/i.test(navigator.userAgent)) {

		        $('a').attr("href","http://jjkangfu.cn/index/productFooter");

		    } else {

		        $('a').attr("href","http://jjkangfu.cn/index/productFooter");

		    }
		    function iosHttps() {
		    	$('#models').animate({height:"296px"});
		    	$('#models img').attr("src","<%=basePath%>img/protal/appPage/activity/lock.png")
		    }
		</script>
	</body>
</html>