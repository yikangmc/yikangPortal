//   wx.config({
//       debug: true,
//       appId: 'wxc43b17327cf5b165',
//       timestamp: '${senAdult.timestamp}',
//       nonceStr: '${senAdult.nonceStr}',
//       signature: '${senAdult.signature}',
//       jsApiList: [
//         'checkJsApi',
//         'onMenuShareTimeline',
//         'onMenuShareAppMessage'      
//       ]
      
//   });
// //alert(location.href)
// wx.ready(function () {
//   // 1 判断当前版本是否支持指定 JS 接口，支持批量判断
//   document.querySelector('#checkJsApi').onclick = function () {
//     wx.checkJsApi({
//       jsApiList: [
//         'getNetworkType',
//         'previewImage'
//       ],
//       success: function (res) {
//         alert(JSON.stringify(res));
//       }
//     });
//   };
//   // 2. 分享接口
//   // 2.1 监听“分享给朋友”，按钮点击、自定义分享内容及分享结果接口
//   // document.querySelector('.last-que').onclick = function () {
//   //   wx.onMenuShareAppMessage({
//   //     title: 'test',
//   //     desc: '在长大的过程中，我才慢慢发现，我身边的所有事，别人跟我说的所有事，那些所谓本来如此，注定如此的事，它们其实没有非得如此，事情是可以改变的。更重要的是，有些事既然错了，那就该做出改变。',
//   //     link: 'http://movie.douban.com/subject/25785114/',
//   //     imgUrl: 'http://img3.douban.com/view/movie_poster_cover/spst/public/p2166127561.jpg',
//   //     trigger: function (res) {
//   //       alert('分享成功');
//   //            mySwiper.slideTo(6, 1000, true);
//   //       if(Num <50){
// 		// 	$('.result-1').show();
// 		// 	$('.result-1').siblings().hide();			
// 		// 	alert(Num) 			
// 		// }else if(50<= Num && Num<=59){
// 		// 	$('.result-2').show();
// 		// 	$('-.result-2').siblings().hide();			
// 		// 	alert(Num)			
// 		// }else if(60<= Num && Num <=69){
// 		// 	$('.result-3').show();
// 		// 	$('.result-3').siblings().hide();			
// 		// 	alert(Num)			
// 		// }else if(Num>69){
// 		// 	$('.result-4').show()
// 		// 	$('.result-4').siblings().hide();		
// 		// 	alert(Num)			
// 		// }	
//   //     },
//   //     success: function (res) {
//   //       alert('已分享');
//   //     },
//   //     cancel: function (res) {
//   //       alert('已取消');
//   //     },
//   //     fail: function (res) {
//   //       alert(JSON.stringify(res));
//   //     }
//   //   });
//   //   alert('已注册获取“发送给朋友”状态事件');
//   // };
//   // 2.2 监听“分享到朋友圈”按钮点击、自定义分享内容及分享结果接口
//   document.querySelector('.last-que').onclick = function () {
//     wx.onMenuShareTimeline({
//       title: '百度',
//       link: 'http://www.baidu.com',
//       imgUrl: 'http://img3.douban.com/view/movie_poster_cover/spst/public/p2166127561.jpg',
//       trigger: function (res) {
//         alert('用户点击分享到朋友圈');       
//       },
//       success: function (res) {
//         alert('已分享');
//         mySwiper.slideTo(6, 1000, true);
//         if(Num <50){
// 			$('.result-1').show();
// 			$('.result-1').siblings().hide();			
// 			alert(Num) 			
// 		}else if(50<= Num && Num<=59){
// 			$('.result-2').show();
// 			$('-.result-2').siblings().hide();			
// 			alert(Num)			
// 		}else if(60<= Num && Num <=69){
// 			$('.result-3').show();
// 			$('.result-3').siblings().hide();			
// 			alert(Num)			
// 		}else if(Num>69){
// 			$('.result-4').show()
// 			$('.result-4').siblings().hide();		
// 			alert(Num)			
// 		}	
//       },
//       cancel: function (res) {
//         alert('已取消');
//       },
//       fail: function (res) {
//         alert(JSON.stringify(res));
//       }
//     });
//     alert('已注册获取“分享到朋友圈”状态事件');
//   };
//  })
// 	var number = 0; //总分
// 	var Num=0;
//     function Dictionary(){
//       this.data = new Array();

//       this.put    =   function(key, val){
//                         this.data[key] = val;
//                       };

//       this.get    =   function(key){
//                         return this.data[key];
//                       };

//       this.update =   function(key, val){
//                         this.data[key] = val;
//                       };

//       this.size   =   function(){
//                         return this.data.length;
//                       };
//       this.score  =   function(score){
//                         number += score;
//                       };
//       this.delete =   function(key){
//                         return this.data.splice(key, 1);

//       }
//     }
//      var _d = new Dictionary();
	
// 	$.deleteData = function(key) {
//       _d.delete(key);
// //		alert(_d.size());
//    }
//     // 
//     // 下个题目
//     // 
    
//     $.InsertDatas = function(_iptData){

// //    var _iptData = $('#test').val(),
//           i = _d.size();
// 	alert(i)
//       _d.put(i ,_iptData);
//     };

//     // 
//     // 分数统计
//     // 
//     $.Score = function() {
//       var style = "A",
//           none  = "B";
//       for (var i = 0; i < _d.size(); i++) {
//         switch(i) { 
//           case 4:   funScore(style, i); break; 
//           case 8:   funScore(style, i); break; 
//           case 12:  funScore(style, i); break; 
//           case 16:  funScore(style, i); break; 
//           case 18:  funScore(style, i); break; 
//           default:  funScore(none, i); 
//         }
//       }
//       Num = Math.round(number*1.25);  
//       return Num;
//       number = 0;   
//     }	
// 	$.answerUpdate = function(key, val){
// 		_d.update(key, val); 
// 	};
	
//     function funScore(style, num) {
//       if ("A" == style) {
//           if (_d.get(num) == "A"){_d.score(4)} 
//           else if (_d.get(num) == "B"){_d.score(3)} 
//           else if (_d.get(num) == "C"){_d.score(2)}
//           else if (_d.get(num) == "D"){_d.score(1)}
//       } else {
//           if(_d.get(num) == "A"){_d.score(1)} 
//           else if (_d.get(num) == "B"){_d.score(2)} 
//           else if (_d.get(num) == "C"){_d.score(3)}
//           else if (_d.get(num) == "D"){_d.score(4)}
//       }
//     }