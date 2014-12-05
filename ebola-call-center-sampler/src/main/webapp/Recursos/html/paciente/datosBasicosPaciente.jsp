<div class="row">
   			<div class="col-md-12">
   				<div class="box">
   					<div class="box-header">
   					 	<span class="title">Datos Basicos</span>
						<ul class="box-toolbar">
			         	<li>
			            	<i class="icon-refresh"></i>
		          		</li>
		        		</ul>
   					</div>
   				
   				 <div class="box-content">
   				
   				 <!-- se ingresan los campos que tiene el paciente -->
   				 	<form class="fill-up">
   				 		<div class="row">
   				 		 <div class="col-lg-6">
   				 		 	<ul class="padded separate-sections">
   				 		 	   <li class="input">
   				 		 	   <label ng-show="isRegistroExisente">Tipo Documento:</label>
   				 		 	    <select class="form-control input"  ng-model="pacientesVistaPaciente.datosBasicos.tipoDocumento" ng-options="i.codigo as i.descripcion for i in  listas.tipoDocumento">
			                     	<option value="">-- escoja un tipo de documento --</option>
			                     </select>
			                   </li>
			                  <li class="input">
			                     <label ng-show="isRegistroExisente">Numero Documento:</label>
			                     <input type="text" placeholder="Numero Documento" ng-model="pacientesVistaPaciente.datosBasicos.numeroDocumento" >
			                  </li>	
			                  <li class="input">
			                  	 <label ng-show="isRegistroExisente">Primer Nombre:</label>
			                     <input type="text" placeholder="Primer nombre" ng-model="pacientesVistaPaciente.datosBasicos.primerNombre">
			                  </li>
			                  <li class="input">
			                  	 <label ng-show="isRegistroExisente">Segundo Nombre:</label>
			                     <input type="text" placeholder="segundo Nombre" ng-model="pacientesVistaPaciente.datosBasicos.segundoNombre">
			                  </li>
			                  <li class="input">
			                  	 <label ng-show="isRegistroExisente">Primer Apellido:</label>
			                     <input type="text" placeholder="Primer aperllido" ng-model="pacientesVistaPaciente.datosBasicos.primerApellido">
			                  </li>
			                  <li class="input">
			                  	 <label ng-show="isRegistroExisente">Segundo Apellido:</label>
			                     <input type="text" placeholder="segundo apellido" ng-model="pacientesVistaPaciente.datosBasicos.segundoApellido">
			                  </li>
			                  <li class="input">
			                  		 <label ng-show="isRegistroExisente">Correo Electronico:</label>
   				 		 			 <input type="text" placeholder="Correo Electronico" ng-model="pacientesVistaPaciente.datosBasicos.correoElectronico">
   				 		 	  </li>
   				 		 	  <li class="input">
			                  		 <label ng-show="isRegistroExisente">Estado Civil:</label>
   				 		 			 <select  class="form-control input"  ng-model="pacientesVistaPaciente.datosBasicos.estadoCivil" ng-options="i.codigo as i.descripcion for i in  listas.estadoCivil">
			                     	<option value="">-- Escoja un estado civil --</option>
			                     	</select>
   				 		 	  </li>
							  <li class="input">
			                  		 <label ng-show="isRegistroExisente">Ocupacion:</label>
   				 		 			 <input type="text" placeholder="Ocupacion" ng-model="pacientesVistaPaciente.datosBasicos.ocupacion">
   				 		 	  </li>
   				 		 	  	<li class="input">
			                  		 <label ng-show="isRegistroExisente">EPS:</label>
   				 		 			 <input type="text" placeholder="EPS" ng-model="pacientesVistaPaciente.datosBasicos.eps">
   				 		 	  </li>
			                </ul>
   				 		 </div>
   				 		 <div class="col-lg-6">
   				 		 	<ul class="padded separate-sections">
   				 		 		<li class="input">
   				 		 			  <label ng-show="isRegistroExisente">Pais:</label>
   				 		 			 <input type="text" placeholder="Pais" ng-model="pacientesVistaPaciente.datosBasicos.datosBasicos.pais">
   				 		 		</li>
   				 		 		<li class="input">
   				 		 			 <label ng-show="isRegistroExisente">Ciudad:</label>
   				 		 			 <input type="text" placeholder="Ciudad" ng-model="pacientesVistaPaciente.datosBasicos.datosBasicos.ciudad">
   				 		 		</li>
   				 		 		<li class="input">
   				 		 			 <label ng-show="isRegistroExisente">Departamento:</label>
   				 		 			 <input type="text" placeholder="Departamento" ng-model="pacientesVistaPaciente.datosBasicos.departamento">
   				 		 		</li>
   				 		 		<li class="input">
   				 		 			 <label ng-show="isRegistroExisente">Direccion:</label>
   				 		 			 <input type="text" placeholder="Direcci&#243;n" ng-model="pacientesVistaPaciente.datosBasicos.direccion">
   				 		 		</li>
   				 		 		<li class="input">
   				 		 			 <label ng-show="isRegistroExisente">Telefono Fijo:</label>
   				 		 			 <input type="text" placeholder="Telefono Fijo" ng-model="pacientesVistaPaciente.datosBasicos.telefono">
   				 		 		</li>
   				 		 		<li class="input">
   				 		 			 <label ng-show="isRegistroExisente">Celular:</label>
   				 		 			 <input type="text" placeholder="Celular" ng-model="pacientesVistaPaciente.datosBasicos.celular">
   				 		 		</li>
   				 		 		<li>
   				 		 			<label ng-show="isRegistroExisente">Fecha de nacimiento:</label>
   				 		 			<div>
	   				 		 			<p  class="input">
							              <input type="text" class="form-control" datepicker-popup="{{formatoPaciente}}" ng-model="pacientesVistaPaciente.datosBasicos.fechaNacimiento" is-open="opened" min="minDate" max="'2015-06-22'" datepicker-options="dateOptions" date-disabled="disabled(date, mode)" ng-required="true" close-text="Close" placeholder="Fecha nacimiento"/>
							             <!--  <span class="input-group-btn">
							                <button class="btn btn-default" ng-click="open($event)"><i class="icon-calendar"></i></button>
							              </span> -->
							            </p>
						           </div>
						           <br>
   				 		 		</li>
   				 		 		<li>
			 		 				<label ng-show="isRegistroExisente">Sexo:</label>
									   <div>
									       <div class="btn-group">
										        <button type="button" class="btn btn-primary" ng-model="pacientesVistaPaciente.datosBasicos.sexo" btn-radio="'F'" >Femenino</button>
										        <button type="button" class="btn btn-primary" ng-model="pacientesVistaPaciente.datosBasicos.sexo" btn-radio="'M'" >Masculino</button>
										        
									    	</div>
									   </div>
   				 		 		</li>
   				 		 		<li>
   				 		 			<label ng-show="isRegistroExisente"> Tipo de Sangre Rh:</label>
   				 		 			 <select  class="form-control input"  ng-model="pacientesVistaPaciente.datosBasicos.rH" ng-options="i.codigo as i.descripcion for i in  listas.rh">
			                     	<option value="">-- Escoja un Tipo de sangre RH --</option>
			                     	</select>
   				 		 		</li>
   				 		 	
   				 		 	   <li class="input">
			                  		 <label ng-show="isRegistroExisente">Tipo Vinculacion EPS:</label>
   				 		 			 <input type="text" placeholder="Tipo Vinculacion EPS" ng-model="pacientesVistaPaciente.datosBasicos.tipoVinculacion">
   				 		 	  </li>
   				 		 	</ul>
   				 		 </div>
   				 		 </div>
   				 		 <div class="form-actions">
   				 		 	<label ng-show="isRegistroExisente">Observacion general de los datos basicos:</label>
   				 		 	<textarea placeholder="Observacion General de Datos Basicos" ng-model="pacienteVistaPaciente.datosBasicos.observacion" rows="6"></textarea>
   				 		 </div>
   				 		 <div class="form-actions">
           					 <button type="button" class="btn btn-blue" ng-click="guardarDatosBasicosPaciente()">Guardar Cambios</button>
           				      <button type="button" class="btn btn-default" ng-click="traeLosdatosPordefectio()">Cancelar</button>
           				      <input type="checkbox" ng-model="isRegistroExisente">
         				</div>
   				 	</form>
   				 </div>
				</div>	 
   			</div>
   		</div>