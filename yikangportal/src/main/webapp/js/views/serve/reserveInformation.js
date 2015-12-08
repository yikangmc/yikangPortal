var ReserveInformation=function(){}

var availableTags = ["ActionScript", "AppleScript", "Asp", "BASIC", "C", "C++", "Clojure", 
                     "COBOL", "ColdFusion", "Erlang", "Fortran", "Groovy", "Haskell", "Java", "JavaScript",
                     "Lisp", "Perl", "PHP", "Python", "Ruby", "Scala", "Scheme","张三","张四"];

ReserveInformation.prototype={
		init:function(){
			$('#search-form').autocomplete({
				hints: availableTags,
				width: 300,
				height: 30,
				onSubmit: function(text){
					$('#message').html('Selected: <b>' + text + '</b>');			
				}
			});
		},
		serachMapPosition:function(){
			
			var mapPosition=$("#mapPostion").val();
			if(null != mapPosition && mapPosition.length>1){
				$.post(basePath+"appointmentOrder/getMapPositionAddress",{mapPositionAddress:mapPosition},function(data){
					if(null != data){
						if(null != data.data){
							
							var rtnData=data.data;
							for(var i=0;rtnData.length;i++){
								
								alert(rtnData[i]);
								
							}
							
						}
					}
				});
			}
			
		}
		
}

var reserveInformation=new ReserveInformation();
$().ready(function(){
	reserveInformation.init();
});
