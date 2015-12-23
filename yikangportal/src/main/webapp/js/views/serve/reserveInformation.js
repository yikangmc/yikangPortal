var ReserveInformation=function(){}

ReserveInformation.prototype={
	init:function(){
	 
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
	reserveInformation.init();
});
