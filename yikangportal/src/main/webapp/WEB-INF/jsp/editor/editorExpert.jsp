<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>发布专业内容</title>
    
    <link href="<%=basePath%>img/protal/editor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/editor/editor.css"/>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>img/protal/editor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>img/protal/editor/umeditor.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>img/protal/editor/lang/zh-cn/zh-cn.js"></script>
   
</head>
<body>
<div class="content">
		<div class="header">
			<div class="header-main">
				<img src="<%=basePath%>img/index/logo.png"/>
			</div>			
		</div>	
<div class="allImp">
	<div class="all-top">	
		<h1><span><img src="<%=basePath%>img/protal/editor/img/expertlogo.jpg"/>发布专家说</span></h1>		
	</div>
	<div class="main-left">
			<h2>请在这里输入标题</h2>
			<input type="text" name="" id="bigTitle" value="" placeholder="填写专业内容标题（必填）" />
			<h2>上传标题图</h2>
			<div class="upLoad">
				<input id="file" multiple="multiple" type="file" value="上传图片" onchange="func()" />
			</div>
			<h2 class="tips">为专家说</h2>
			<div class="nav-meny"></div>
		
		<div class="menu">
			
			<ul class="menuBody">

				<li>运动康复</li>

				<li>言语康复</li>

				<li>中医</li>

				<li>护理</li>

				<li>老年康复</li>

				<li>慢病</li>

				<li>心脑血管</li>

				<li>体态矫正</li>

			</ul>
			<div class="Label"></div>
			<div class="Label"></div>
			<div class="Label"></div>
			<div class="Label"></div>
			<div class="Label"></div>
			<div class="Label"></div>
			<div class="Label"></div>
			<div class="Label"></div>
		</div>
	</div>
	<!--style给定宽度可以影响编辑器的最终宽度-->
	<div class="mainEditor">		
		<script type="text/plain" id="myEditor" style="width:900px;height:900px;">
		    <p style="font-size: 14px;color: #b5b5b5;margin-left: 10px;">请补充你的正文内容</p>
		</script>		
	</div>	
</div>
</div>
<div class="footer">
	<div class="footer-main">
		<ul class="ft-list">
			<!--<li class="btn-preview"><a href="###">预览</a></li>-->
			<li class="btn-release"><a href="###">发布</a></li>
		</ul>
	</div>		
</div>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    um.addListener('blur',function(){
        $('#focush2').html('编辑器失去焦点了')
    });
    um.addListener('focus',function(){
        $('#focush2').html('')
        
    });
    var mli = $('.menuBody li'), 
				mdv = $('.Label'),
				nCk = $('.nav-meny');

			// 假数据
			var info = function(n) {
				var select = new Array()

				select[0] = "智障"
				select[1] = "帕金森"
				select[2] = ""
				select[3] = "浪里格朗儿"
				select[4] = "桑格利亚"
				select[5] = "智力低下且不兼"
				select[6] = "破伤风"
				select[7] = "万通筋骨贴"

				return select[n];

			}

			// 事件委托
			for (var i = 0; i < mli.length; i++) {
				mli[i].id = ("d" + (i + 1));
				mdv[i].id = ("d" + (i + 1));
			}

			var tid, did, dd, dl,nM;
			mli.hover(function() {
				$(this).addClass("hover");
				$(this).each(function(){did = $(this).attr("id")});
				dd = $("div#" + did);
				dl = $("li#" + did);

				dd.addClass("this-hover");
				dl.addClass("hover");

				dd.hover(function() {

					dl.addClass("hover");
					dd.addClass("this-hover");

				}, function() {

					dl.removeClass("hover");
					dd.removeClass("this-hover");

				});
			}, function() {

				dl.removeClass("hover");
				dd.removeClass("this-hover");

			});


			mli.mouseover(function() {
				var oIndex = $(this).index();
				var selects = info(oIndex);

				mdv.html("").append(
						"<a href='#' class='Lables'>" 
						+ selects + 
						"</a>");

				$('.Label a').click(function() {
					selects = $(this).html();

					if (nCk.children('a').length < 4) {
						nCk.append(
							"<a href='#' class='Lables'>"
							+ selects + 
							"<div class='clear'>×</div></a>");
						
						nM = $('.nav-meny a');
						$.dLable();

					} else { alert("(。・`ω´・)最多只能选4个标签哟~") }

				});

			})

			$.dLable = function(){
				for (var i=0; i<nM.length; i++) {
					$('.nav-meny a .clear').bind("click", function() {
						$(this).parent('a').remove();
					});
					nM[i].onmouseover = function() {
						$(this).children("div").css("display","block");
					};

					nM[i].onmouseout = function() {
						$(this).children("div").css("display","none");
					};
				}
			}
    //去除输入框内的第一个隐藏的 p
     $("#myEditor p").first().remove();
    function func() {
	    var fileObj=document.getElementById("file");
	    var src = window.URL.createObjectURL(fileObj.files[0]);
	    var img = document.createElement('img');
	    var odiv = document.getElementById('myEditor');
	    var patn = /\.jpg$|\.jpeg$|\.gif$|\.png$/i;
		if(patn.test(fileObj.value)){			
			img.src = "file://localhost/" + fileObj.value;
			
		}else{
			alert("您选择的似乎不是图像文件,请重新选择。");
			return;
		}
	    img.src = src;
	    odiv.appendChild(img);
	};
	
    //
    //按钮的操作
//  function insertHtml() {
//      var value = prompt('插入html代码', '');
//      um.execCommand('insertHtml', value)
//  }
//  function isFocus(){
//      alert(um.isFocus())
//  }
//  function doBlur(){
//      um.blur()
//  }
//  function createEditor() {
//      enableBtn();
//      um = UM.getEditor('myEditor');
//  }
//  function getAllHtml() {
//      alert(UM.getEditor('myEditor').getAllHtml())
//  }
	var Title=document.getElementById('bigTitle');
	
	
    $('.btn-release').click(function(){
		var oTXT= UM.getEditor('myEditor').getContentTxt();
		
		if (Title.value==''||Title.value.length<1||oTXT<1) {

			alert('您好像没有输入标题或者内容');
		} else {
			var i=$('.nav-meny').children('a').length;
			if(i<1){
				alert('请选择至少一个标签')
			}else{
				var arr = [];
		//      arr.push("使用editor.getContent()方法可以获得编辑器的内容");
				
			    arr.push("填写内容为：");		
				arr.push($('#bigTitle').val());
		        arr.push(UM.getEditor('myEditor').getContent());
		        alert(arr.join("\n"));
			}
		}
    })
//  $('.btn-release').click(function(){
//      var arr = [];
////      arr.push("使用editor.getContent()方法可以获得编辑器的内容");
//		
//	    arr.push("填写内容为：");		
//		arr.push($('#bigTitle').val());
//      arr.push(UM.getEditor('myEditor').getContent());
//      alert(arr.join("\n"));
//		
//  })
    
//  function getPlainTxt() {
//      var arr = [];
//      arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
//      arr.push("内容为：");
//      arr.push(UM.getEditor('myEditor').getPlainTxt());
//      alert(arr.join('\n'))
//  }
//  function setContent(isAppendTo) {
//      var arr = [];
//      arr.push("使用editor.setContent('欢迎使用umeditor')方法可以设置编辑器的内容");
//      UM.getEditor('myEditor').setContent('欢迎使用umeditor', isAppendTo);
//      alert(arr.join("\n"));
//  }
//  function setDisabled() {
//      UM.getEditor('myEditor').setDisabled('fullscreen');
//      disableBtn("enable");
//  }
//
//  function setEnabled() {
//      UM.getEditor('myEditor').setEnabled();
//      enableBtn();
//  }
//
//  function getText() {
//      //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
//      var range = UM.getEditor('myEditor').selection.getRange();
//      range.select();
//      var txt = UM.getEditor('myEditor').selection.getText();
//      alert(txt)
//  }
//
//  function getContentTxt() {
//      var arr = [];
//      arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
//      arr.push("编辑器的纯文本内容为：");
//      arr.push(UM.getEditor('myEditor').getContentTxt());
//      alert(arr.join("\n"));
//  }
//  function hasContent() {
//      var arr = [];
//      arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
//      arr.push("判断结果为：");
//      arr.push(UM.getEditor('myEditor').hasContents());
//      alert(arr.join("\n"));
//  }
//  function setFocus() {
//      UM.getEditor('myEditor').focus();
//  }
//  function deleteEditor() {
//      disableBtn();
//      UM.getEditor('myEditor').destroy();
//  }
//  function disableBtn(str) {
//      var div = document.getElementById('btns');
//      var btns = domUtils.getElementsByTagName(div, "button");
//      for (var i = 0, btn; btn = btns[i++];) {
//          if (btn.id == str) {
//              domUtils.removeAttributes(btn, ["disabled"]);
//          } else {
//              btn.setAttribute("disabled", "true");
//          }
//      }
//  }
//  function enableBtn() {
//      var div = document.getElementById('btns');
//      var btns = domUtils.getElementsByTagName(div, "button");
//      for (var i = 0, btn; btn = btns[i++];) {
//          domUtils.removeAttributes(btn, ["disabled"]);
//      }
//  }
</script>

</body>
</html>