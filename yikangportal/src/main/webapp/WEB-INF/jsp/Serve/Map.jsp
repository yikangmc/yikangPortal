<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>输入提示后查询</title>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
        src="http://webapi.amap.com/maps?v=1.3&key=99891508524054beccc322c75a2de45c"></script>
<style type="text/css">
        body {
            font-size: 12px;
        }
		.dv_toptitle {
			width: 100%;
			height: 70px;
			background: #000;
			text-align: center;
			line-height: 70px;
			color: #FFF;
			font-size: 52px;
			font-family: Verdana, Geneva, sans-serif;
			font-weight: 400;
		}
		.dv_1 {
			margin: 0 auto;
			text-align: center;
			width: 100%;
			height: 100%;
			background: #666;
		}
		.ipt_names {
			width: 80%;
			height: 70px;
			border: 0px;
            font-size: 36px;
		}
		
    </style>
</head>
<body>
<div class="dv_toptitle">护理家</div>
<div class="dv_1">
    <input class="ipt_names" type="text" id="keyword" name="keyword" value="请输入关键字：(选定后搜索)" onfocus='this.value=""'/>
</div>
<script type="text/javascript">
    var windowsArr = [];
    var marker = [];
    var mapObj = new AMap.Map("mapContainer", {
            resizeEnable: true,
            center: [116.397428, 39.90923],//地图中心点
            zoom: 13,//地图显示的缩放级别
            keyboardEnable: false
    });
    AMap.plugin(['AMap.Autocomplete','AMap.PlaceSearch'],function(){
      var autoOptions = {
        city: "北京", //城市，默认全国
        input: "keyword"//使用联想输入的input的id
      };
      autocomplete= new AMap.Autocomplete(autoOptions);
      var placeSearch = new AMap.PlaceSearch({
            city:'北京',
            map:mapObj
      })
      AMap.event.addListener(autocomplete, "select", function(e){
         //TODO 针对选中的poi实现自己的功能
         placeSearch.search(e.poi.name)
      });
    });
</script>
</body>
</html>