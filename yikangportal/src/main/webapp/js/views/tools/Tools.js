Tools=function(){}
Tools.prototype={
		
		breakNumber:10,
		
		init:function(){
			
		},
		capatchaCountdown:function(src){
			
			if(this.breakNumber ==10){
				$(src).attr("disabled",true);
			}
			this.breakNumber--;
			if(this.breakNumber>0){
				
				$(src).text(this.breakNumber);
				setTimeout(function() { 
					tools.capatchaCountdown(src)
				}, 1000);
			}
			if(this.breakNumber == 0){
				$(src).attr("disabled",false);
				$(src).text("获取验证码");
				this.breakNumber=10
			}
			
			
		}
		
		
}
var tools=new Tools();


function setTimeOut(){
	
}