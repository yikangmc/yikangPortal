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
		
		
		if(null == $("#appointmentDateTime").val() || $("#appointmentDateTime").val() == ""){
			alert("您好，请选择预约时间！");
			return;
		}
		if(null == $("#custumerTimeQuantumId").val() ||  $("#custumerTimeQuantumId").val() == ""){
			alert("您好，请选择预约时间！");
			return;
		}
		if(null == $("#mapPositionAddress").val() || $("#mapPositionAddress").val() == ""){
			alert("您好，请选择附近的热点地址！");
			return;
		}
		
		if(null == $("#detailAddress").val() || $("#detailAddress").val() ==  ""){
			alert("您好，请填写详细地址！");
			return;
		}
		
		if(null == $("#districtCode").val() || $("#districtCode").val() ==  ""){
			alert("您好，请选择热点地址！");
			return;
		}

		if(null == $("#linkUserName").val() || $("#linkUserName").val() ==  ""){
			alert("您好，请填写联系人名称！");
			return;
		}
		
		if(null == $("#phoneNumber").val() || $("#phoneNumber").val() ==  ""){
			alert("您好，请填写联系电话！");
			return;
		}
		
		
		
		var formParam=$("#appointmentOrderForm").serialize();
		
		$.post(basePath+"appointmentOrder/saveAppointmentOrder",formParam,function(data){
			if(null != data && data.status == "000000"){
				//alert(data.message);
				var rtnData=data.data;
				reserveInformation.orderComplate(rtnData.orderId,$("#serviceItemId").val());
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
	 * @param isAlert 是否提示
	 * ***/
	getServicer:function(isAlert){
		var formParam=$("#appointmentOrderForm").serialize();
		//String appointmentDateTime,Long custumerTimeQuantumId,
		//String mapPositionAddress,String districtCode,String detailAddress
		if(null == $("#appointmentDateTime").val() || $("#appointmentDateTime").val() == ""){
			if(isAlert){
				alert("您好，请选择预约时间！");
			}
			return;
		}
		if(null == $("#custumerTimeQuantumId").val() ||  $("#custumerTimeQuantumId").val() == ""){
			if(isAlert){
				alert("您好，请选择预约时间！");
			}
			return;
		}
		if(null == $("#mapPositionAddress").val() || $("#mapPositionAddress").val() == ""){
			if(isAlert){
				alert("您好，请选择附近的热点地址！");
			}
			return;
		}
		
		if(null == $("#detailAddress").val() || $("#detailAddress").val() ==  ""){
			if(isAlert){
				alert("您好，请填写详细地址！");
			}
			return;
		}
		
		$.post(basePath+"appointmentOrder/getServicerInfo",formParam,function(data){
			
			if(null != data && data.status == "000000"){
				
				$("#serviceUserId").detach();
				var servicer=data.data;
				var divStr="<div><img class='img-circle' src='"+servicer.photoUrl+"'></img><div>"+servicer.userServiceName+"<br>"+(servicer.desc=='无'?'':servicer.desc)+"</div></div>";
				var servicerHidden="<input type='hidden' id='serviceUserId' name='serviceUserId' value='"+servicer.userId+"'/>";
				$("#servicerDiv").empty();
				$("#servicerDiv").html(divStr);
				$("#appointmentOrderForm").append(servicerHidden);
				//reserveInformation.submitAppointmentOrder();
			}else{
				alert(data.message);
			}
			
		});
	},
	getServiceDate:function(serviceDate){
		
		$("#appointmentDateTime").val(serviceDate);
		 $.post(basePath+"appointmentOrder/getCustumerTimeQuantums",{"serviceDate":serviceDate},function(data){
			 
			 if(null != data && data.status=="000000"){
				 var custumerTimes=data.data;
				 var custumerTimesStr="";
				 $("#dv_timeover").empty();
				 for(var i=0;i<custumerTimes.length;i++){
					 var ct=custumerTimes[i];
					 custumerTimesStr=custumerTimesStr+'<button class="btn_porject" onclick=\'serviceItemDetail.choseAppointmentTime("'+ct.timeQuantumId +'","'+ct.startTime+'")\'>'+ct.startTime +'</button>';
				 }
				 $("#dv_timeover").html(custumerTimesStr);
				 $(".triangle-up").css("display","none");
				 $("#upOne"+serviceDate).css("display","");
				 
			 }
			 
		 });
	},
	/**
	 * @author liushuaic
	 * @date 2016/01/06 11:46
	 * @desc 
	 * 
	 * */
	orderComplate:function(orderId,serviceItemId){
		window.location.href=basePath+"appointmentOrder/orderComplete?orderId="+orderId+"&serviceItemId="+serviceItemId;
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
	         reserveInformation.getServicer(false);
	         
	      });
	    });
});
