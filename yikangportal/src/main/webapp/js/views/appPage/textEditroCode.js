var TextEditorCode=function(){}

TextEditorCode.prototype={
		init:function(){
			
		},
		getRedirctPage:function(){
			$.post(basePath+"home/getRedirctUrl",function(data){
				if(null != data){
					if(data.status == "000000"){
						var redrictUrl=data.data;
						window.location.href=basePath+redrictUrl;
					}else{
						
					}
				}
			});
		}
}

var textEditorCode=new TextEditorCode();
$().ready(function(){
	//启动初始化
	textEditorCode.init();
	//定时查询跳转页面
	// 加入页面动画
	setInterval('textEditorCode.getRedirctPage()', 1000);
});