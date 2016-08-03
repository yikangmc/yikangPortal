<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>回答问题</title>
    
    <link href="<%=basePath%>img/protal/editor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/editor/editor.css"/>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>img/protal/editor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>img/protal/editor/umeditor.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>img/protal/editor/lang/zh-cn/zh-cn.js"></script>
    <!-- Bootstrap -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
   
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
		<h1 style="margin:0;line-height:25px;"><span><img src="<%=basePath%>img/protal/editor/img/tianjiahuida_16x16.png"/>添加回答</span></h1>		
	</div>
	<div class="main-left">
			<h2>你正在为下面问题添加回答</h2>
			<div class="asw-question">
				为什么总是吃不胖？
			</div>
			<h2>问题所属标签</h2>
			<div class="asw-tips">
				<label>动脉粥样硬化</label>
				<label>动脉粥样硬化</label>
			</div>
			
	</div>
	<!--style给定宽度可以影响编辑器的最终宽度-->
	<div class="mainEditor">		
		<script type="text/plain" id="myEditor" style="width:900px;height:900px;">
		    <p style="font-size: 14px;color: #b5b5b5;margin-left: 10px;">请填写你的回答</p>
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
				select[2] = "阴吹思婷"
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
	    var patn = /\.jpg$|\.jpeg$|\.gif$/i;
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
	
	
//  $('.btn-release').click(function(){
//		var oTXT= UM.getEditor('myEditor').getContentTxt();
//		
//		if (oTXT<1) {
//
//			alert('您输入的内容长度不够哟');
//	 
//		}
//  })
    $('.btn-release').click(function(){
    	var oTXT= UM.getEditor('myEditor').getContentTxt();
		
		if (oTXT<1) {

			alert('您输入的内容长度不够哟');
	 
		}else{
        var arr = [];
//      arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		
	    arr.push("填写内容为：");		
		arr.push($('#bigTitle').val());
        arr.push(UM.getEditor('myEditor').getContent());
        alert(arr.join("\n"));
		}
    })
    
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