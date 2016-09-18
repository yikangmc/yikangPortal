	function isTitle(){
            var regx = /^\d+$/ 
            var value = document.getElementById("bigTitle").value
            if(regx.test(value))
            {
                alert('标题不能是纯数字哟')
            } else {
               console.log('right')
            }   
        } ;  
	
	var Title=document.getElementById('bigTitle');
	var A=document.getElementById('a-line');
	var B=document.getElementById("b-line");	
	var numP1=document.getElementById('nump');
	var numP2=document.getElementById('nump2');
	var Start= document.getElementById('start');
	var Start2 = document.getElementById('start2');
	var Start3 = document.getElementById('start3');
	var Start4 = document.getElementById('start4');
	var End3 = document.getElementById('end3');
	var End4 = document.getElementById('end4');
	var Price1 = document.getElementById('unit-price');
	var Price2 = document.getElementById('unit-price2')
	var Keyword = document.getElementById('keyword');
	var Address = document.getElementById('address');
	   
   	 $('.btn-release').click(function(){
   	 	var oTXT= UM.getEditor('myEditor').getContentTxt();
		if(B.style.display=='block' &&(numP2.value.length<1||Start3.value.length<1||Start4.value.length<1||End3.value.length<1||End4.value.length<1||Price2.value.length<1)){
				alert('线下活动信息不全')
				
		}
		else if(A.style.display=='block'&&(numP1.value.length<1||Start.value.length<1||Start2.value.length<1||Price1.value.length<1))
		{
				alert('线上活动信息不全')
				
		}
		
		else if (Title.value==''||Title.value.length<6||oTXT<1){
		 
			alert('您好像没有输入标题（不少于5个字）或者内容');
		}
		
		else if($('.nav-meny').children('a').length<1){
			alert('请选择至少一个标签');
		}	 
		else{
		var arr = [];
//      arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		
	    arr.push("填写内容为：");		
		arr.push($('#bigTitle').val());
        arr.push(UM.getEditor('myEditor').getContent());
        
        alert(arr.join("\n"));
		}

    })
   