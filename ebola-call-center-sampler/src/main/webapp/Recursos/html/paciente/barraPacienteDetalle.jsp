<div class="container" ng-init="inicilizarInformacionPacienteDetalle(numeroIdentificacion)" ng.model="clinica.pacientes">
  		<div class="row">
  			<div class="area-top clearfix">
   			 	<div class="pull-left header">
       		 		<h3 class="title">
           				<i class="icon-dashboard"></i>
           				 Informacion  Detallada de Paciente
         			</h3>
          			<h5>
            			<span>
              				En este panel ud encontrará la informacion completa del Paciente que esta buscando, tan solo explore la opciones, agregue o modifique informacion , no olvide presionar le boton guardar para enviar los cambios.
            			</span>
          			</h5>
        		</div>
  			</div>
		</div>
		<div class="container padded">
    		<div class="row">
	    		<div id="breadcrumbs">
	        			<div class="breadcrumb-button blue" ng-click="seleccionarVista(0)">
	          			<span class="breadcrumb-label"><i class="icon-home"></i>Inicio</span>
	          			<span class="breadcrumb-arrow"><span></span></span>
	        	 	</div>
	        		<div class="breadcrumb-button" ng-click="seleccionarVista(1)">
	          			<span class="breadcrumb-label">
	            		<i class="icon-dashboard"></i> Pacientes
	          			</span>
	          			<span class="breadcrumb-arrow"><span></span></span>
	        		</div>
	        		<div class="breadcrumb-button" ng-click="seleccionarVista(1)">
	          			<span class="breadcrumb-label">
	            		<i class="icon-dashboard"></i> Informacion Paciente Detallada
	          			</span>
	          			<span class="breadcrumb-arrow"><span></span></span>
	        		</div>
	   			</div>
    		</div>
   		</div>