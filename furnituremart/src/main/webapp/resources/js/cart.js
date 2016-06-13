//var cartApp = angular.module ("cartApp", []);
//
//cartApp.controller("cartCtrl", function($scope, $http){
//	
//$scope.cart=${cartList.cart};
//$scope.refreshCart = function(){
//	   $http.get('http://localhost:8080/furnituremart/rest/cart/' + $scope.cartId).success(function (data){
//	       $scope.cart = data;
//	   });
//	};
//
//
//$scope.initCartId = function(cartId){
//    $scope.cartId = cartId;
//    $scope.refreshCart(cartId);
//};
//});

//<script>
		var myApp = angular.module('myApp',[]);
	 
		myApp.controller('getData', function($scope)
		 { 
			 
			$scope.cart = ${cartList};
			
		 
		 });
	
//</script>
