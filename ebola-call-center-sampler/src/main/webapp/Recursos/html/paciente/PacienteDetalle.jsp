<head>
<script type="text/javascript" src="/javascripts/vendor/ibutton.js"></script>
</head>
<div class="main-content"  ng-controller="pacienteCtrl">
		<ng-include src="'/Recursos/html/paciente/barraPacienteDetalle.jsp'"></ng-include>
   		<accordion close-others="oneAtATime">
   		 <accordion-group is-open="true">
   		 	<accordion-heading>
           Datos Basicos Paciente <i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': isopen, 'glyphicon-chevron-right': !isopen}"></i>
      	  </accordion-heading>
   		 	<ng-include src="'/Recursos/html/paciente/datosBasicosPaciente.jsp'"></ng-include>
   		</accordion-group>
   		<accordion-group is-open="true">
   		 	<accordion-heading>
           Historia Clinica Odontologica <i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': isopen, 'glyphicon-chevron-right': !isopen}"></i>
      	  </accordion-heading>
   		 	<ng-include src="'/Recursos/html/paciente/historiaClinicaOdontologia.jsp'"></ng-include>
   		</accordion-group>
   		</accordion>
   	</div>
</div>