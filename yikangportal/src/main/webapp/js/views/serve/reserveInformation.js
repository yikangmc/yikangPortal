var ReserveInformation=function(){}

ReserveInformation.prototype={
	init:function(){
	 
	},
	serachMapPosition:function(){
	 
	},
	submitAppointmentOrder:function(){
		
		var formParam=$("#appointmentOrderForm").serialize();
		
		$.post(basePath+"appointmentOrder/saveAppointmentOrder",formParam,function(data){
			if(null != data && data.status == "000000"){
				alert(data.message);
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
