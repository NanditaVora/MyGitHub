/**
 * 
 */

angular.module("chatApp.controllers").controller("ChatCtrl",function($scope,ChatService)
{
	$scope.messages=[];
	$scope.message="";
	$scope.max=70;
	
	
	$scope.addMessage = function(){
		ChatService.send($scope.message);
		$scope.message="";
		alert(message + " sent");
		
	};
	
	ChatService.receive().then(null,null,function(message){
		$scope.messages.push(message);
	});
});