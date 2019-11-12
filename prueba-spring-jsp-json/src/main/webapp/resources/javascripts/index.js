var app = angular.module("registro", ['ngMaterial', 'ngMessages']);
app.controller("mi_controller", function ($scope, $http, $window) {
	$scope.agregarUsuario = function() {
		$window.location.href = "registro";
	};
});