AppointmentTime=function(){}
AppointmentTime.prototype={
		init:function(){
			alert(null);
			$("btn_porject").bind("onclick",appointmentTime.setTimeQuantumId());
		},
		setTimeQuantumId:function(src){
			$("#serviceItemId").val($(src).val());
		}
		
}

var appointmentTime=new AppointmentTime();


$().ready(function(){
	appointmentTime.init();
});