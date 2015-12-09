ServePrecept=function(){}
ServePrecept.prototype={
		init:function(){
			
			// 绑定回车事件
			document.onkeydown = function (event) {
                var e = event || window.event || arguments.callee.caller.arguments[0];
                if (e && e.keyCode == 13) {
                	servePrecept.appointmentService();
                }
            };
		},
		appointmentService:function(){
			//预约服务
			$.post(basePath+"invite/serveOnNew.html",$("#inviteForm").serialize(),function(data){
				if(null !== data && data.status ==="000000"){
					alert(data.message);
					if(null != $("#invitationCode").val()){
						window.location.href=basePath+"invite/toServeOnNew?invitationCode="+$("#invitationCode").val();
					}else{
						window.location.href=basePath+"invite/toServeOnNew";
					}
				}else{
					alert(data.message);
				}
			});
		}
}

var servePrecept=new ServePrecept();
servePrecept.init();