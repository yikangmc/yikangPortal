function id(obj){
    return document.getElementById(obj);
}
function bind(obj, ev, fn) {
    if (obj.addEventListener) {
        obj.addEventListener(obj, ev, fn);
    } else {
        obj.attachEvent('on' + ev, function() {
            fun.call(obj);
        });
    }
}
// 获取宽,高 针对页面需要分配
function view() {
    return {
        w: document.documentElement.clientWidth,
        h: document.documentElement.clientHeight
    };
}
function addClass(obj, sClass) {
    var aClass = obj.className.split('');
    if (!obj.className) {
        obj.className = sClass;
        return;
    }
    for (var i = 0; i < aClass.length; i++) {
        if(aClass[i] === sClass) return;
    }
    obj.className += '' + sClass;
}

function removeClass(obj, sClass) {
    var aClass = obj.className.split('');
    if (!obj.className) return;
    for (var i = 0; i < aClass.length; i++) {
        if (aClass[i] === sClass) {
            aClass.split(i, 1);
            obj.className = aClass.join('');
            break;
        };
    }
}
