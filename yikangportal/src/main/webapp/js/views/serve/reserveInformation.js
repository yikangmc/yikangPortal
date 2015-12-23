var ReserveInformation=function(){}

ReserveInformation.prototype={
	init:function(){
	 //数据校验

	
	},
	serachMapPosition:function(){
	 
	},
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/12/17 10:35
	 * @desc 提交表单
	 * 
	 * **/
	submitAppointmentOrder:function(){
		
		var formParam=$("#appointmentOrderForm").serialize();
		
		$.post(basePath+"appointmentOrder/saveAppointmentOrder",formParam,function(data){
			if(null != data && data.status == "000000"){
				alert(data.message);
			}else{
				if(null != data && data.status == "030002"){
					$('#loginDialog').modal('show');
				}else{
					alert(data.message);
				}
			}
		});
		
		
	},
	/**
	 * @author liushuaic
	 * @date 2015/12/17 09:57
	 * @desc 获取服务人员
	 * ***/
	getServicer:function(){
		var formParam=$("#appointmentOrderForm").serialize();
		$.post(basePath+"appointmentOrder/getServicerInfo",formParam,function(data){
			
			if(null != data && data.status == "000000"){
				
				$("#serviceUserId").detach();
				
				var servicer=data.data;
				var divStr="<div><img class='img-circle' src='"+servicer.photoUrl+"'></img><div>"+servicer.userServiceName+"<br>"+servicer.desc+"</div></div>";
				var servicerHidden="<input type='hidden' id='serviceUserId' name='serviceUserId' value='"+servicer.userId+"'/>";
				$("#servicerDiv").empty();
				$("#servicerDiv").html(divStr);
				$("#appointmentOrderForm").append(servicerHidden);
				//reserveInformation.submitAppointmentOrder();
			}else{
				alert(data.message);
			}
			
		});
	}
	
	
}




var reserveInformation=new ReserveInformation();
$().ready(function(){
	 $('#loginForm').bootstrapValidator({
	        message: '请填写规范的数据！',
	        fields: {
	        	loginName: {
	                validators: {
	                    notEmpty: {
	                        message: '手机号不能为空！'
	                    }
	                }
	            },
	            loginPassword:{
	            	 validators: {
		                    notEmpty: {
		                        message: '密码不能为空！'
		                    }
		                }
	            }
	        }
	    });
	 
	 
	 
	 
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
	         placeSearch.search(e.poi.name);
	         
	         //设置模糊搜索地址
	         $("#mapPositionAddress").val(e.poi.name);
	         $("#districtCode").val(e.poi.adcode);
	         
	      });
	    });
});
