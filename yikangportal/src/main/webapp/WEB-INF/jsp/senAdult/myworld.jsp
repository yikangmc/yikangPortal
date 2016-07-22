<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
  <script src="<%=basePath%>js/viewport.js"></script>
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
  <script src="http://www.runoob.com/static/ionic/js/ionic.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
  <link href="http://www.runoob.com/static/ionic/css/ionic.min.css"rel="stylesheet">
  <title>ionicTest -- YKService</title>
</head>
  <body ng-app="starter" ng-controller="actionsheetCtl" >
    <ion-pane>
      <ion-content >
         <h2 ng-click="show()">Action Sheet</h2>
            </ion-content>
        </ion-pane>
  </body>
  <script type="text/javascript">
    angular.module('starter', ['ionic'])
    .run(function($ionicPlatform) {
      $ionicPlatform.ready(function() {
        // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
        // for form inputs)
        if(window.cordova && window.cordova.plugins.Keyboard) {
          cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
        }
        if(window.StatusBar) {
          StatusBar.styleDefault();
        }
      });
    })

    .controller( 'actionsheetCtl',['$scope','$ionicActionSheet','$timeout' 
      ,function($scope,$ionicActionSheet,$timeout){
        $scope.show = function() {

            var hideSheet = $ionicActionSheet.show({
                 buttons: [
                  { text: '分享到微信' },
                  { text: '分享到QQ' },
                  { text: '分享到新浪' },
                  { text: '复制分享链接' }
                ],
                cancelText : '取消',
                cancel: function() {
                     // add cancel code..
                   },
                buttonClicked: function(index) {
                  return true;
                }
            });

            $timeout(function(){hideSheet()}, 60000);

        };  
    }])
  </script>
</html>