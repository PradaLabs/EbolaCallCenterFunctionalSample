<div class="main-content"  ng-controller="pacienteCtrl">
  	<div class="container" ng-init="inicilizarInformacionPaciente(clinica.pacientes)" ng.model="clinica.pacientes">
  		<div class="row">
  			<div class="area-top clearfix">
   			 	<div class="pull-left header">
       		 		<h3 class="title">
           				<i class="icon-dashboard"></i>
           				 Pacientes
         			</h3>
          			<h5>
            			<span>
              				En el panel de paciente usted puede buscar, crear y actualizar la informacion del paciente de una manera facil.
            			</span>
          			</h5>
        		</div>
  			</div>
		</div>
		<div class="container padded">
    		<div class="row">
		      <!-- Breadcrumb line -->
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
      			</div>
    		</div>
  		</div>
  		<div class="row">
  			<!-- Inicio de estadistica de pacientes  en este cuadro se encuentra la estadistica de los pacientes-->
  			<div class="col-md-6">
				<div class="box">
		 			 <div class="box-header">
		   			 	<span class="title">Actividad de pacientes.</span>
		   			 	<ul class="box-toolbar">
		     		 		<li><span class="label label-green">2 Pacientes Nuevos</span></li>
		   				 </ul>
		  			</div>
		  			<div class="box-content">
		    			<table class="table table-normal">
		     			 <thead>
		      				<tr>
		       					<td></td>
		       					<td>Tipo </td>
		        				<td>numero</td>
		        				<td>Porcentaje</td>
		        				<td style="width: 40px"></td>
		      				</tr>
		     			 </thead>
		      			 <tbody>
		      				<tr class="status-success">
			        			<td class="icon"><i class="icon-ok"></i></td>
			        			<td><a href="#">Pacientes Activos</a></td>
			        			<td><b>{{estadisticaPaciente.numeroActivos}}</b></td>
			        			<td><b>{{estadisticaPaciente.porcentajeActivos}}%</b></td>
			        			<td>
			          				<div class="btn-group">
							            <button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></button>
							            <ul class="dropdown-menu">
							              <li><a href="consultarEstadisticaPaciente()">Actualizar</a></li>
							            </ul>
			          				</div>
			        			</td>
		     			 	</tr>
		     				<tr class="status-pending">
		        				<td class="icon"><i class="icon-signin"></i></td>
		       					<td><a href="#">Paciente Inactivos</a></td>
						        <td><b>{{estadisticaPaciente.numeroInactivos}}</b></td>
			        			<td><b>{{estadisticaPaciente.porcentajeInactivos}}%</b></td>
						        <td>
						          <div class="btn-group">
						            <button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></button>
						            <ul class="dropdown-menu">
						             <li><a href="consultarEstadisticaPaciente()">Actualizar</a></li>
						            </ul>
						          </div>
						        </td>
	     					</tr>
		
					    <tr class="status-success">
					 		<td class="icon"><i class="icon-group"></i></td>
						        <td><a href="#">Pacientes Totales</a></td>
						        <td><b>{{estadisticaPaciente.numeroTotal}}</b></td>
			        			<td><b>{{estadisticaPaciente.porcentajeTotal}}%</b></td>
						        <td>
				         			<div class="btn-group">
					            		<button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></button>
					            		<ul class="dropdown-menu">
						               		 <li><a href="consultarEstadisticaPaciente()">Actualizar</a></li>
							         	</ul>
						    		</div>
							</td>
						</tr>
						<tr class="status-info">
					 		<td class="icon"><i class="icon-warning-sign"></i></td>
						        <td><a href="#">Valoraciones</a></td>
						         <td><b>{{estadisticaPaciente.numeroValoraciones}}</b></td>
			        			 <td><b>{{estadisticaPaciente.porcentajeValoraciones}}%</b></td>
						        <td>
				         			<div class="btn-group">
					            		<button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></button>
					            		<ul class="dropdown-menu">
						               		<li><a href="consultarEstadisticaPaciente()">Actualizar</a></li>
							         	</ul>
						    		</div>
							</td>
						</tr>
			      </tbody>
			    </table>
			  </div>
			</div>
	  		</div>
  			<!--fin de la estadistica  -->
  			<div class="action-nav-normal">
			 	<div class="row action-nav-row">
   				<div class="col-sm-3 action-nav-button">
			      <a ng-click="seleccionarVistaPaciente(0)" title="Users">
			        <i class="icon-user"></i>
			        <span>Nuevo Paciente:</span>
			      </a>
			      <span class="triangle-button green"><i class="icon-plus"></i></span>
		   		</div>
		   	 </div>
		    </div>
  			</div>
  		</div>
  		<div class="col-md-12">
		    <div class="box">
		        <div class="box-header"><span class="title">Pacientes de la clinica</span></div>
		        <div class="box-content">
		            <div id="dataTables">
		                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid">
		                    <div class="table-header">
		                        <div class="dataTables_filter" id="DataTables_Table_0_filter"><label>buscar: <input type="text" ng-model="filtro.query" ></label></div>
		                        <div id="DataTables_Table_0_length" class="dataTables_length">
		                            <label>
		                                Items por Pagina
		                                <div class="selector fixedWidth">
		                                    <span style="-webkit-user-select: none;">25</span>
		                                    <select size="1" name="DataTables_Table_0_length" aria-controls="DataTables_Table_0">
		                                        <option value="10" selected="selected">10</option>
		                                        <option value="25">25</option>
		                                        <option value="50">50</option>
		                                        <option value="100">100</option>
		                                    </select>
		                                </div>
		                                Pacientes
		                            </label>
		                        </div>
		                    </div>
		                    <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
		                        <thead>
		                            <tr role="row">
		                                <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">
		                                    <div>Nombre Completo</div>
		                                </th>
		                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">
		                                    <div>Numero Identificacion</div>
		                                </th>
		                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">
		                                    <div>numero Telefono</div>
		                                </th>
		                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">
		                                    <div>numero Celular</div>
		                                </th>
		                            </tr>
		                        </thead>
		                        <tbody role="alert" aria-live="polite" aria-relevant="all">
		                      		
		                  		    <tr class="odd" ng-model="clinica.pacientes" ng-repeat="paciente in ( clinicaFiltrada.lista = (clinica.pacientes | filter:filtro.query) ) | startFrom:(paginaActual.valor-1)*registrosXPagina.valor | limitTo:registrosXPagina.valor" ng-click="seleccionarVistaPaciente(0)">
		                                <td class=" sorting_1" ><a>{{nombreCompletoPaciente(paciente)}}</a></td>
		                                <td class=" "><a>{{paciente.datosBasicos.dsTipoDocumento}}</a></td>
		                                <td class=" "><a>{{paciente.datosBasicos.dsTelefono}}</a></td>
		                                <td class="center"><a>{{paciente.datosBasicos.dsCelular}}</a></td>
		                            </tr> 
		                            
		                        </tbody>
		                    </table>
		                    <div class="table-footer">
		                        <div class="dataTables_info" id="DataTables_Table_0_info">Ver {{paginaActual.valor}} - {{totalPaginas.valor}} de {{numeroTotalRegistros.valor}} Pacientes</div>
		                       <!--  <div class="dataTables_paginate paging_full_numbers"><pagination total-items="bigTotalItems" page="bigCurrentPage" max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages"></pagination></div> -->
		                    </div>
		                    	<div class="col-md-12">
			 						<div class="dataTables_paginate paging_full_numbers"><pagination total-items="numeroTotalRegistros.valor" page="paginaActual.valor" max-size="maxSize" class="pagination-sm" boundary-links="true"></pagination>
								</div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		
	</div>
</div>
