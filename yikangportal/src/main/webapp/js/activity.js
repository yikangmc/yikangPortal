// 动态条
$(".run1").click(function(){
  	$("#line").animate(	{"margin-left":"60px"})
  	$("#fnt1").css({"color":"#0faadd"})
  	$("#fnt2").css({"color":"#333"})
});
$(".run2").click(function(){
  	$("#line").animate(	{"margin-left":"434px"})
  	$("#fnt2").css({"color":"#0faadd"})
  	$("#fnt1").css({"color":"#333"})
});

// 切换关注
$("#btns").click(function() {
	var state = document.getElementById('btns');
	var ico = document.getElementById('btns').className;
	if (ico == "btn_attention_on") {
		document.getElementById('btns').className = "btn_attention_ck"
		state.innerHTML = "已关注";
	} else {
		document.getElementById('btns').className = "btn_attention_on"
		state.innerHTML = "关注";
	}
});