<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>发布线上活动</title>
    
    <link href="<%=basePath%>img/protal/editor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
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
				<img src="<%=basePath%>img/index/logo.png">
			</div>			
		</div>	
<div class="allImp">
	<div class="all-top">	
		<ul class="act-type">
			<li class="act-type1" style="border-right: 1px solid #d6d6d6;"><span><img src="img/线上点击.png"/></span>发布线上活动</li>
			<li><span><img src="<%=basePath%>img/protal/editor/img/线下未点击.png"/></span>发布线下活动</li>
		</ul>			
	</div>
	<div class="main-left">
			<h2>请在这里输入标题</h2>
			<input type="text" name="" id="bigTitle" value="" placeholder="填写活动标题（必填）" />
			<h2>上传宣传图</h2>
			<div class="upLoad">
				<input id="file" multiple="multiple" type="file" value="上传图片" onchange="func()" />
			</div>
			<h2 class="tips">为活动添加标签</h2>
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
		<script type="text/plain" id="myEditor" style="width:900px;height:614px;">
		    <p style="font-size: 14px;color: #b5b5b5;margin-left: 10px;">请补充你的正文内容</p>
		</script>	
		<div class="editor-list">
			<ul style="margin: 0px;">
				<li style="border-right: 1px solid #dadadc;width: 900px;"><span>人数</span><input style="width: 773px;" type="text" name="nump" id="nump" value="" placeholder="请填写最大数量，或填不限" /></li>
				
				<div class="r-start">
					<span>报名开始</span><li class="laydate-icon" id="start" style="width:282px;float: right;border: 0;padding-left:18px ;color: #444;"></li>
				</div>
				<!--<div class="r-end">
					<span>报名结束</span><li class="laydate-icon" id="end" style="width:282px;float: right;border: 0;padding-left:18px ;color: #444;"></li>
				</div>-->
				<div class="r-ends">
					<span>费用</span><input type="text" name="" id="unit-price" value="" placeholder="元/人" />
				</div>
				<div class="a-start">
					<span>活动开始</span><li class="laydate-icon" id="start2" style="width:282px;float: right;border: 0;padding-left:18px ;color: #444;"></li>
				</div>
				<!--<div class="a-end">
					<span>活动结束</span><li class="laydate-icon" id="end2" style="width:282px;float: right;border: 0;padding-left:18px ;color: #444;"></li>
				</div>-->
				<div class="a-ends">
					<span>活动时长</span>
					<select name="atime">
						<option value="">1小时</option>
						<option value="">2小时</option>
						<option value="">3小时</option>
						<option value="">4小时</option>
						<option value="">5小时</option>
						<option value="">6小时</option>
						<option value="">7小时</option>
						<option value="">8小时</option>
						<option value="">9小时</option>
						<option value="">10小时</option>
						<option value="">11小时</option>
						<option value="">12小时</option>
						<option value="">13小时</option>
						<option value="">14小时</option>
						<option value="">15小时</option>
						<option value="">16小时</option>
						<option value="">17小时</option>
						<option value="">18小时</option>
						<option value="">19小时</option>
						<option value="">20小时</option>
						<option value="">21小时</option>
						<option value="">22小时</option>
						<option value="">23小时</option>
						<option value="">24小时</option>
					</select>
				</div>
				
			</ul>
			<div class="c-address">
				<div class="address-ch">
			            <span class="input-label">地址:</span>
			            <input type="text" id="keyword" name="ykwork" placeholder="所在地关键字"
			            onfocus='this.value=""' onblur="$.loadaddr()" />
				</div>
		       <div class="adress-wr">
		            <span class="input-label">详细地址:</span>
		            <input type="text" id="address" placeholder="详细所在地,如楼层" />
		       </div>
		        
			</div>			
		</div>
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
<!-- 高德地图的开发者key 这个必须引入 -->
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=99891508524054beccc322c75a2de45c"></script>
<script src="<%=basePath%>img/protal/editor/laydate/laydate.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$('#nump').focus(function(){
		$('#nump').css('border','none');
	})
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
		var i=$('.nav-meny').children('a').length;
		if (Title.value==''||Title.value.length<1||oTXT<1) {

			alert('您好像没有输入标题或者内容');
		} else {
		
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
var start = {
    elem: '#start',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2016-12-31 23:59:59', //最大日期
    istime: true,
    istoday: true,
//  choose: function(datas){
//       end.min = datas; //开始日选好后，重置结束日的最小日期        
//       end.start = datas //将结束日的初始值设定为开始日
//       t=$('#start').html();
//       //console.log(t);
//       var idate=new Date(t);
//       //console.log(idate);
//       var times = Date.parse(idate);
//       //console.log(times);
//       var inum=30*24*60*60*1000;
//       inum += times;
//       //console.log(inum);
//       var date1 = new Date(inum);
//       var Y = date1.getFullYear()+'/';
//       var M = (date1.getMonth()+1<10 ? '0'+(date1.getMonth()+1):date1.getMonth()+1)+'/';
//       var D = date1.getDate();
//       //console.log(Y+M+D)
//		 var tt = Y+M+D;
//		 end.max = tt;
//  }
};


//$('#laydate_box td').blur(function(){
//	alert($('#start').html())
//});

	

//var end = {
//  elem: '#end',
//  format: 'YYYY/MM/DD hh:mm:ss',
//  min: laydate.now(),
//  max: '2099-12-31 23:59:59',
//  istime: true,
//  istoday: true,
//  choose: function(datas){
//      start.max = datas; //结束日选好后，重置开始日的最大日期       
//     
//  }
//};
//var x=document.getElementById('start');
//var starttime = Date.parse(new Date($('start').val()));
//  laydate({
//	    elem: '#end',
//	    format: 'YYYY/MM/DD hh:mm:ss',
//	//  min: laydate.now(),
//	  max: '2099-06-16 23:59:59',
//	  istime: true,
//	  istoday: false,
//	    min: laydate.now(+0), //-1代表昨天，-2代表前天，以此类推
//	    max: laydate.now(+0), //+1代表明天，+2代表后天，以此类推
//	});
laydate(start);
//laydate(end);
var start2 = {
    elem: '#start2',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2016-12-31 23:59:59', //最大日期
    istime: true,
    istoday: true,
//  choose: function(datas){
//       end2.min = datas; //开始日选好后，重置结束日的最小日期        
//       end2.start = datas //将结束日的初始值设定为开始日
//       t=$('#start2').html();
//       //console.log(t);
//       var idate=new Date(t);
//       //console.log(idate);
//       var times = Date.parse(idate);
//       //console.log(times);
//       var inum=30*24*60*60*1000;
//       inum += times;
//       //console.log(inum);
//       var date1 = new Date(inum);
//       var Y = date1.getFullYear()+'/';
//       var M = (date1.getMonth()+1<10 ? '0'+(date1.getMonth()+1):date1.getMonth()+1)+'/';
//       var D = date1.getDate();
//       //console.log(Y+M+D)
//		 var tt = Y+M+D;
//		 end2.max = tt;
//  }
};


//$('#laydate_box td').blur(function(){
//	alert($('#start').html())
//});

	

//var end2 = {
//  elem: '#end2',
//  format: 'YYYY/MM/DD hh:mm:ss',
//  min: laydate.now(),
//  max: '2099-12-31 23:59:59',
//  istime: true,
//  istoday: true,
//  choose: function(datas){
//      start2.max = datas; //结束日选好后，重置开始日的最大日期       
//     
//  }
//};
//var x=document.getElementById('start');
//var starttime = Date.parse(new Date($('start').val()));
//  laydate({
//	    elem: '#end',
//	    format: 'YYYY/MM/DD hh:mm:ss',
//	//  min: laydate.now(),
//	  max: '2099-06-16 23:59:59',
//	  istime: true,
//	  istoday: false,
//	    min: laydate.now(+0), //-1代表昨天，-2代表前天，以此类推
//	    max: laydate.now(+0), //+1代表明天，+2代表后天，以此类推
//	});
laydate(start2);
//laydate(end2);
    // 主要代码 代码中的console log 可以删除
    // 请注意console中的信息反馈。
    // Over ╮(╯▽╰)╭

	var key = "99891508524054beccc322c75a2de45c",
        addr,ykwork,address,addcode;
    var sId,sName,sDistrict,sAdcode,sLocation,sAddress,sTypecode;
    AMap.plugin(['AMap.Autocomplete','AMap.PlaceSearch'],function(){

        var autoOptions = { city: "北京", input: "keyword" };
        autocomplete = new AMap.Autocomplete(autoOptions);

        AMap.event.addListener(autocomplete, "select", function(e){
            sId = e.poi.id;
            sName = e.poi.name;
            sDistrict = e.poi.district;
            sAdcode = e.poi.adcode;
            sLocation = e.poi.location;
            sAddress = e.poi.address;
            sTypecode = e.poi.typecode;
            addr = e.poi.district + e.poi.address + e.poi.name;
            $('#keyword').val(addr);
        });
    });

    $.loadaddr = function() {

        try {
            setTimeout(function(){
                ykwork = $('#keyword').val(addr)},100);
        } catch(err) {
            console.log(err);
        }
    }

    $.subMap = function(){
        var ikey = $('#keyword').val();
            iadd = $('#address').val();

        // console log 换成alter 提示语你定
        if (ikey == null || ikey == "") {
            console.log("地址不正确╮(╯_╰)╭");
        } else if (iadd == null || iadd == "") {
            console.log("详细地址不正确╮(╯_╰)╭");
        } else {
            address = "地址:" + addr + $('#address').val();

            console.log(address);
            // 提交信息
            console.log(
                sId
                    +","+sName
                    +","+sDistrict
                    +","+sAdcode
                    +","+sLocation
                    +","+sAddress
                    +","+sTypecode
                );
        }
    }


    // 控制台
    console.log(":-) 不用理会下面的红色错误，他只是库冲突了。");


</script>

</body>
</html>