var app = angular.module("registro", ['ngMaterial', 'ngMessages'])
.run( function($rootScope) {
    $rootScope.baseUrl = "http://localhost:8080/prueba-spring-jsp-json";
})