function mousePosition(evt){  
    evt = evt || window.event;  
    //Mozilla  
    if(evt.pageX || evt.pageY){  
        return { x : evt.pageX,y : evt.pageY}     
    }  
    //IE  
    return {  
        x : evt.clientX + document.body.scrollLeft - document.body.clientLeft,  
        y : evt.clientY + document.body.scrollTop - document.body.clientTop  
    }  
}  
  
//获取X轴坐标  
function getX(evt){  
    evt = evt || window.event;  
    return mousePosition(evt).x;  
}  
  
//获取Y轴坐标  
  
function getY(evt){  
    evt = evt || window.event;  
    return mousePosition(evt).y;  
}
  
//外部函数调用2  
  
function showXY(evt){  
    evt = evt || window.event;  
    document.getElementById("n").innerHTML = ""+getX(evt);  
}  
window.onload = function(){  
    document.body.onmousemove = showXY;  
}