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
		},
		register:function(){
			
			var paramData=$("#registerForm").serialize();
			
			$.post(basePath+"user/registerUser",paramData,function(data){
				if(null !=data){
					if(data.status == "000000"){
						alert(data.message);
					}else{
						alert(data.message);
					}
					login.hideRegisterDialog();
				}
			});
			
		},
		showRegisterDialog:function(){
			
			$("#loginDialog").modal("hide");
			$("#registerDialog").modal("show");
		},
		hideRegisterDialog:function(){
			$("#registerDialog").modal("hide");
		},
		getCaptcha:function(){
			var mobileNumber=$("#mobileNumber").val();
			if(null != mobileNumber && mobileNumber.length>0 && mobileNumber.length<13){
				$.post(basePath+"user/getCaptcha",{"mobileNumber":mobileNumber},function(data){
					if(null != data){
						alert(data.message);
					}
				});
			}
			
		}
		
		
}

var login =new Login();
login.init();
