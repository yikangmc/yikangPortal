var Index=function(){}
Index.prototype={
		init:function(){
			
		},
		getServiceItem:function(){
			if(this.validateForm()){
				var param=$("#formServiceForm").serializeArray();
				$.post(basePath+"appointmentUser/regiestUserAndServiceItemIdAndRemark",param,function(data){
					if(null != data){
						if(data.status=="000000"){
							alert(data.message);
						}else{
							alert(data.message);
						}
					}
				});
			}
		},
		validateForm:function(){
			var mobileNumber=$("#inputMobileNumber").val();
			var serviceItem=$("#inputServiceItmeId").val();
			if(null == mobileNumber || mobileNumber == "" || mobileNumber.length!=11){
				alert("请填写正确的手机号！");
				return false;
			}
			if(null  == serviceItem || serviceItem =="" || serviceItem ==0){
				alert("请选择服务项目！");
				return false;
			}
			return true;
		},
		fillForm:function(src){
			$("#modal-overlay").css({"visibility":"visible"});
			$("#inputServiceItmeId").val($(src).attr("data-service-item-id"));
		},
		resetForm:function(){
			
		}
}
var index=new Index();
index.init();