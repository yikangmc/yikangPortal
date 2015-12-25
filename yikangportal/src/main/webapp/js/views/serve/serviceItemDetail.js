ServiceItemDetail=function(){}
ServiceItemDetail.prototype={
		init:function(){
			
		},
		appointmentServiceItem:function(){
			$("#serviceItemForm").submit();
//			var postParam=$("#serviceItemForm").serialize();
//			 $.post(basePath+"appointmentOrder/storeMyOrder",postParam,function(data){
//				 if(null != data && data.status == '000000'){
//					 window.location.href=basePath+"appointmentOrder/toReviceInfomation";
//				 }else{
//					 alert(data.message);
//				 }
//			 });
		},
		selectMedicinalApparatuId:function(src,id){
			var idStr="medicinalApparatusId"+id;
			var maObj=document.getElementById(idStr);
			if(null == maObj){
				var medicinalAppratuIdInput="<input type='hidden' id="+idStr+" name='medicinalApparatusId' value='"+id+"'>";
				$("#medicinalApparatusIdsDiv").append(medicinalAppratuIdInput);
			}else{
				$("#"+idStr).detach();
			}
			
			
		},
		/**
		 *@author  刘帅
		 *@date 2015/12/14 11:48
		 *@desc 移除某一个表单点的，元素
		 *
		 * */
		removeMedicinalAppartuId:function(){
			$("#medicinalApparatusIdsDiv").empty();
		},
		/**
		 * @author liushuaic
		 * @date 2015/12/15 14:44
		 * 选择时间点
		 * **/
		choseAppointmentTime:function(id,text){
			$("#myModal").modal("hide");
			$("#custumerTimeQuantumId").val(id);
			var appointmentTimeStr= $("#appointmentDateTime").val()+" "+text;
			$("#appointmentTime").val(appointmentTimeStr)
			$("#appointmentTime").trigger("change");
		}
		
		
}

var serviceItemDetail=new ServiceItemDetail();