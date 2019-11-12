<!doctype html>
<html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular-animate.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular-aria.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular-messages.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascripts/app.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascripts/service.js"></script>
		<script src="${pageContext.request.contextPath}/resources/javascripts/registro.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.css">
	</head>
	<body ng-app="registro" ng-cloak>
		<div ng-controller="mi_controller" layout-align="center center" class="contenedor-general">
			<md-card class="carta">
				<div class="carta-contenedor" flex>
					<form name="projectForm">
						<div class="titulo">
							<h2 class="poco-margen-inferior md-display-1">Registrar usuario</h2>
							<p>Ingresar los datos del nuevo usuario</p>
						</div>
						<br>
						<md-input-container class="md-block alto-estandar">
							<label>Nombre</label>
							<input name="nombre" required md-no-asterisk ng-model="usuario.nombre">
        					<div ng-messages="projectForm.nombre.$error">
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<md-input-container class="md-block alto-estandar">
							<label>Apellido</label>
							<input required md-no-asterisk name="apellido" ng-model="usuario.apellido">
        					<div ng-messages="projectForm.apellido.$error">
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<md-input-container class="md-block alto-estandar">
							<label>Tipo de documento</label>
							<md-select required md-no-asterisk name="tipoDocumento" ng-model="usuario.tipoDocumento">
								<md-option ng-repeat="x in tipos_documento" ng-value="x">
									{{x}}
								</md-option>
							</md-select>
        					<div ng-messages="projectForm.tipoDocumento.$error">
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<md-input-container class="md-block alto-estandar">
							<label>Numero de documento</label>
							<input required md-no-asterisk name="documento" type="number" ng-model="usuario.documento">
        					<div ng-messages="projectForm.documento.$error">
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<md-input-container class="md-block alto-estandar">
							<label>Genero</label>
							<md-select required md-no-asterisk name="genero" ng-model="usuario.genero">
								<md-option ng-repeat="x in generos" ng-value="x">
									{{x}}
								</md-option>
							</md-select>
        					<div ng-messages="projectForm.genero.$error">
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<div flex style="display: flex; margin-top: -16px; margin-bottom: -16px;">
							<md-input-container flex="65" class="md-block alto-estandar">
								<label>Fecha de nacimiento</label>
								<input disabled required md-no-asterisk ng-model="usuario.fechaDeNacimiento">
							</md-input-container>
							<md-input-container flex="35" class="md-block alto-estandar">
								<label>Fecha</label>
								<md-datepicker required md-no-asterisk name="fecha" ng-model="usuario.fechaDeNacimiento" md-current-view="year"></md-datepicker>
	        					<div ng-messages="projectForm.fecha.$error">
	          						<div ng-message="required">Este campo es requerido.</div>
								</div>
							</md-input-container>
						</div>
						<md-input-container class="md-block alto-estandar">
							<label>Email</label>
							<input required md-no-asterisk name="email" type="email" ng-model="usuario.email">
        					<div ng-messages="projectForm.email.$error">
								<div ng-message="email">El formato no es correcto.</div>
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<md-input-container class="md-block alto-estandar">
							<label>Confirmar email</label>
							<input required ng-paste="$event.preventDefault()" md-no-asterisk name="emailConfirm" ng-model="emailConfirm" ng-pattern="usuario.email">
        					<div ng-messages="projectForm.emailConfirm.$error">
								<div ng-message="pattern">El mail no coincide con el ingresado previamente.</div>
          						<div ng-message="required">Este campo es requerido.</div>
							</div>
						</md-input-container>
						<md-input-container class="md-block alto-estandar">
							<label>Subir archivo</label>
							<input name="archivo" ng-model="user.archivo" type="file">
						</md-input-container>
					</form>
					<div class="alto-estandar titulo">
						<md-button ng-disabled="projectForm.$invalid" class="md-raised md-primary boton-crear-usuario" ng-click="addUser()">Crear usuario</md-button>
					</div>
				</div>
			</md-card>
		</div>
	</body>
</html>