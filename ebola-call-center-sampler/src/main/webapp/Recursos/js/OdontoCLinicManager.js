app.controller("OdontoCLinicManagerCtrl",function ($scope , $http , $location) {

	$scope.vistas = {vistaPrinciapl:['vistaOperaciones', 'vistaPaciente','vistaAgendaDetallada','vistaReportes','vistaCaja','vistaAdministrarClinica'],
			VistaPaciente:['vistaPacienteDetalle']};
	$scope.vistaSeleccionada ={valor: $scope.vistas.vistaPrinciapl[0]};//Vista seleccionada por default;
	$scope.formatos = [{formato1:'dd-MMMM-yyyy'}, {formato2:'yyyy/MM/dd'}, {formato3:'shortDate'}];
	
	
	$scope.clinica={pacientes :   [{datosBasicos:
	                               {dsPrimerNombre: "juanda",
									dsSegundoNombre: "david",
									dsPrimerApellido: "caicedo",
									dsSegundoApellido: "reyes",
									dsTipoDocumento:"c94542961",
									dsTelefono:"55297131",
									dsCelular:"3104931227"
	                               }},

	                               { datosBasicos: {dsPrimerNombre: "andres",
	                            	   dsSegundoNombre: "guillermo",
	                            	   dsPrimerApellido: "Prada",
	                            	   dsSegundoApellido: "Reyes",
	                            	   dsTipoDocumento:"c94542962",
	                            	   dsTelefono:"55297131",
	                           			dsCelular:"3104931227"
	                               }},

	                               { datosBasicos: {dsPrimerNombre: "andres",
	                            	   dsSegundoNombre: "guillermo",
	                            	   dsPrimerApellido: "Prada",
	                            	   dsSegundoApellido: "Reyes",
	                            	   dsTipoDocumento:"c94542962",
	                            	   dsTelefono:"55297131",
	                           			dsCelular:"3104931227"
	                               }}
	]};
	
	$scope.seleccionarVista= function (numerodeVista){
		$scope.vistaSeleccionada.valor = $scope.vistas.vistaPrinciapl[numerodeVista];
	}
	
	 $scope.paginaSigOut = function(){
		   console.log($location.absUrl());
		   window.location.assign($location.path()+"CerrarSesionGoogle");
	  }
	 CallbackTraerInformaion=function(){
		 
	 }
	 CallbackTraerInformaionError = function(){
		 
	 
	 }
	 $scope.traerinformacionTableroPrincipal= function(){
		 $http.post($scope.contextPath + '/servicioDatosClinica').
		 	success(CallbackTraerInformaion).
		 	error(CallbackTraerInformaionError);

