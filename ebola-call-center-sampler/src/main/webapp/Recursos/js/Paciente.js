//var app = angular.module("OdontoCLinicManager", ['ui.bootstrap']);

app.controller("pacienteCtrl",function ($scope , $http , $location) {
	//O-	O+	A−	A+	B−	B+	AB−	AB+
	$scope.listas={
		'tipoDocumento':[{'codigo':'C' ,'descripcion':'Cedula'},
		                 {'codigo':'TI','descripcion':'Tarjeta Identidad'},
		                 {'codigo':'PA','descripcion':'Pasaporte Extrangeria'}],
		'estadoCivil':[{'codigo':'CA','descripcion':'Casado'},
		               {'codigo':'SO','descripcion':'Soltero'},
		               {'codigo':'UL','descripcion':'Union libre'}],
		'rh':[{'codigo':'O-','descripcion':'O-'},
		      {'codigo':'O+','descripcion':'O+'},
		      {'codigo':'A-','descripcion':'A+'},
		      {'codigo':'A+','descripcion':'A+'},
		      {'codigo':'B-','descripcion':'B-'},
		      {'codigo':'B+','descripcion':'B+'},
		      {'codigo':'AB-','descripcion':'AB-'},
		      {'codigo':'AB+','descripcion':'AB+'}]
	};
	
	
	 $scope.lista=$scope.listas.tipoDocumento[2];
	 $scope.fechaNacimientoVistaPacienteDetalle=new Date();
	 $scope.formatoPaciente = $scope.formatos.formato1;
	 $scope.isRegistroExisente=true;
	 
	  $scope.cargarPacientes = function() {
		  console.log("Carga los pacientes");
		  $scope.currentPage = {valor : 1};
		  $scope.tamanioMaximo ={ valor: 5};
		  $scope.maxSize = 5;
		  $scope.numeroTotalRegistros = { valor : 175 };
		  $scope.paginaActual={ valor: 1};
		  $scope.registrosXPagina = {valor : 10};
		  $scope.totalPaginas={valor:0};
	
			$scope.totalPacientes = function() {
					$scope.numeroTotalRegistros.valor=$scope.pacientesVistaPaciente.length;
			}
			$scope.totalPaginasPacientes = function() {
				var numeroPaginasResultado = Math.ceil($scope.pacientesVistaPaciente.length / $scope.registrosXPagina.valor);
				if (numeroPaginasResultado == 0) {
					$scope.totalPaginas.valor= 1;
				} else {
					$scope.totalPaginas.valor= numeroPaginasResultado;
				}
			}
		
			
	 }
	  
	  $scope.today = function() {
		    $scope.dt = new Date();
		  };
		  $scope.today();
	  $scope.setPage = function (pageNo) {
		    $scope.currentPage = pageNo;
		  };
	  
	$scope.pacientesVistaPaciente={};
	
	$scope.clinicaFiltrada={lista:''};
	$scope.nombreCompletoPaciente=function (paciente){
		var nombreCompleto='';
		if(paciente != null && paciente.datosBasicos != null){
			if(paciente.datosBasicos.primerNombre != null){
				nombreCompleto = nombreCompleto +paciente.datosBasicos.primerNombre;
			}
			if(paciente.datosBasicos.segundoNombre != null){
				nombreCompleto = nombreCompleto +" "+paciente.datosBasicos.segundoNombre;
			}
			if(paciente.datosBasicos.primerApellido != null){
				nombreCompleto = nombreCompleto +" "+paciente.datosBasicos.primerApellido;
			}
			if(paciente.datosBasicos.SsgundoApellido != null){
				nombreCompleto = nombreCompleto +" "+paciente.datosBasicos.segundoApellido;
			}
		}
		return nombreCompleto;
	}
	$scope.seleccionarVistaPaciente= function (numerodeVistaPaciente){
		$scope.vistaSeleccionada.valor = $scope.vistas.VistaPaciente[numerodeVistaPaciente];
	}
	
	$scope.setPage = function (pageNo) {
	    $scope.currentPage = pageNo;
	  };
	  
	  $scope.inicilizarInformacionPaciente=function(pacientes){
		  	if(pacientes != null){
			  $scope.pacientesVistaPaciente=pacientes;
			  $scope.cargarPacientes();
			  $scope.totalPacientes();
			  $scope.totalPaginasPacientes();
			  console.log($scope.pacientesVistaPaciente);
			  console.log("$scope.numeroTotalRegistros "+$scope.numeroTotalRegistros);
			  if( $scope.pacientesVistaPaciente.fechaNacimiento != null){
				  $scope.fechaNacimientoVistaPacienteDetalle =  $scope.paciente.fechaNacimiento;
			  }
			  $scope.sexo1=true;
			  $scope.sexo2=false;
		  	}
		 };
	  
	  $scope.guardarDatosBasicosPaciente=function(){
		  //se llama al servicio que guarda datos Basico Pacientes
	  };
	  
	  $scope.traeLosdatosPordefectio=function(){
		  $scope.pacientesVistaPaciente=$scope.clinica.pacientes;
	  };
	  $scope.disabled = function(date, mode) {
		    return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
	  };
	  $scope.open = function($event) {
	    $event.preventDefault();
	    $event.stopPropagation();
	    $scope.opened = true;
	  };
	  $scope.dateOptions = {
			    'year-format': "'yy'",
			    'starting-day': 1
			  };
});
app.filter('startFrom', function() {
	return function(input, start) {
		start = +start;
		return input.slice(start);
	}
});


