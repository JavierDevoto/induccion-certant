app.service('service', function($window, $http, $rootScope) {
	this.getDocumentParametrics = function() {
		return $http.get($rootScope.baseUrl.concat('/parametria-documento')).then( function(response) {
			return response.data.tipo_documento
		})
	}

	this.getGenderParametrics = function() {
		return $http.get($rootScope.baseUrl.concat('/parametria-genero')).then( function(response) {
			return response.data.generos
		})
	}
	
	this.addUser = function(data) {
		return $http.post($rootScope.baseUrl.concat('/usuario/alta'), data).then( function(response) {
			if (response.status === 200) {
				$window.location.href = $rootScope.baseUrl.concat('/home')
			} else {
				$window.alert('Error al intentar dar de alta')
			}
		})
	}
})
