<!doctype html>
<html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular-animate.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular-aria.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular-messages.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascripts/index.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.css">
	</head>
	<body ng-app="registro" ng-cloak>
		<div ng-controller="mi_controller" layout-align="center center" class="contenedor-general">
			<md-card class="carta">
				<div class="carta-contenedor" flex>
					<div class="titulo">
						<h2 class="md-display-1">Pantalla de inicio</h2>
					</div>
					<div class="alto-estandar titulo">
						<md-button class="md-raised md-primary boton-crear-usuario" ng-click="agregarUsuario()">Agregar nuevo usuario</md-button>
					</div>
				</div>
			</md-card>
		</div>
	</body>
</html>