app.controller('mi_controller', function($scope, service) {
	service.getDocumentParametrics().then( function(response) {
		$scope.tipos_documento = response
	})
	service.getGenderParametrics().then( function(response) {
		$scope.generos = response
	})
	$scope.usuario
	$scope.addUser = function() {
		$scope.usuario.fechaDeNacimiento = $scope.usuario.fechaDeNacimiento.getTime()
		service.addUser($scope.usuario)
	}
})
