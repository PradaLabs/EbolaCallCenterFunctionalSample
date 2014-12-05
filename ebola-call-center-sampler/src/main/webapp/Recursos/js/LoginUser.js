var app = angular.module("Login", []);


app.controller("LoginCtrl",function ($scope , $http , $location) {
	
	var ctx = "<%=request.getContextPath()%>";
	$scope.datos="Envio datos del cliente";
	$scope.usuarioAutenticacion={login:'',password:''};
	
	
   $scope.paginaLogueoGoogle = function(){
	   console.log($location.absUrl());
	   window.location.assign("/AutenticacionGoogle?urlRetorno="+"/OdontoClinicManager.jsp");
	   
   }
   $scope.servicioAutenticaciongoogle=function (){
	   if($scope.user != '' && $scope.user != ''){
		   $http.post("rest/Autenticacion/AutenticacionUserPass?login="+$scope.usuarioAutenticacion.login+"&password="+$scope.usuarioAutenticacion.password, $scope.usuarioAutenticacion)
		   .success(function(data, status, headers, config) {
		       $scope.data = data;
		       console.log(data);
		       window.location.assign("/OdontoClinicManager.jsp");
		   }).error(function(data, status, headers, config) {
		       $scope.status = status;
		   });
	   }
	  
   }
   
});

