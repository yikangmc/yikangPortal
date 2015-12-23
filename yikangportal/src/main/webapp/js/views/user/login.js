Login=function(){}
Login.prototype={
		init:function(){
			
		},
		login:function(){
			var paramData=$("#loginForm").serialize();
			$.post(basePath+"user/login",paramData,function(data){
				if(null != data && data.status =='000000'){
					$("#loginDialog").modal("hide");
				}else{
					alert(data.message);
				}
			});
		}
}

var login =new Login();
login.init();
