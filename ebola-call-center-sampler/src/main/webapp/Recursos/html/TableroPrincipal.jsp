 <head>
<!-- <link href="../../stylesheets/application.css" media="screen" rel="stylesheet" type="text/css" /> -->

  <script src="../../javascripts/application.js" type="text/javascript"></script> 
  
</head>  
<div class="main-content">
  <div class="container">
    <div class="row">

      <div class="area-top clearfix">
        <div class="pull-left header">
          <h3 class="title">
            <i class="icon-dashboard"></i>
            Tablero de Operaciones
          </h3>
          <h5>
            <span>
              Aqui en el tablero de Operaciones puede encontrar los elementos necesarios para gestionar su clinica, solo necesita dar click en la accion que nesecite.
            </span>
          </h5>
        </div>

        <ul class="list-inline pull-right sparkline-box">

          <li class="sparkline-row">
            <h4 class="blue"><span>Pacientes este mes</span> 847</h4>
            <div class="sparkline big" data-color="blue"><!--2,11,5,28,25,19,27,6,4,23,20,6--></div>
          </li>

          <li class="sparkline-row">
            <h4 class="green"><span>Pacientes Activos</span> 223</h4>
            <div class="sparkline big" data-color="green"><!--28,26,13,18,8,6,24,19,3,6,19,6--></div>
          </li>

          <li class="sparkline-row">
            <h4 class="red"><span>Pacientes Totales</span> 7930</h4>
            <div class="sparkline big"><!--16,23,28,8,12,9,25,11,16,16,17,13--></div>
          </li>

        </ul>
      </div>
    </div>
  </div>

  <div class="container padded">
    <div class="row">

      <!-- Breadcrumb line -->

      <div id="breadcrumbs">
        <div class="breadcrumb-button blue" ng-click="seleccionarVista(0)">
          <span class="breadcrumb-label"><i class="icon-home"></i> Inicio</span>
          <span class="breadcrumb-arrow"><span></span></span>
        </div>
        <div class="breadcrumb-button" ng-click="seleccionarVista(0)">
          <span class="breadcrumb-label">
            <i class="icon-dashboard"></i> Operaciones
          </span>
          <span class="breadcrumb-arrow"><span></span></span>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">

  <div class="col-md-6">
    <!-- find me in partials/action_nav_normal -->

<!--big normal buttons-->
<div class="action-nav-normal">

	  <div class="row action-nav-row">
		   <div class="col-sm-3 action-nav-button">
		      <a ng-click="seleccionarVista(1)" title="Users">
		        <i class="icon-user"></i>
		        <span>Pacientes</span>
		      </a>
		      <span class="triangle-button green"><i class="icon-search"></i></span>
		    </div>
		    
		    <div class="col-sm-3 action-nav-button">
		      <a href="#" title="New Project">
		        <i class="icon-calendar"></i>
		        <span>Agenda detallada</span>
		      </a>
		      <span class="triangle-button green"><i class="icon-search"></i></span>
		    </div>
		    
		 	<div class="col-sm-3 action-nav-button">
	      		<a href="#" title="Messages">
	        		<i class="icon-bar-chart"></i>
	       			<span>Reportes</span>
	      		</a>
	      		<span class="triangle-button green"><i class="icon-search"></i></span>
    		</div>
    		
		   
		    
	  </div>

	  <div class="row action-nav-row">
	  	 <div class="col-sm-3 action-nav-button">
		      <a href="#" title="Messages">
		        <i class="icon-money"></i>
		        <span>Caja</span>
		      </a>
		      <span class="triangle-button red"><i class="icon-circle-arrow-right"></i></span>
		 </div>
	
	    <div class="col-sm-3 action-nav-button">
	      <a href="#" title="Users">
	        <i class="icon-briefcase"></i>
	        <span>Administrar clinica</span>
	      </a>
	      <span class="triangle-button red"><i class="icon-circle-arrow-right"></i></span>
	    </div>
	    
	     <div class="col-sm-3 action-nav-button">
	      <a href="#" title="Users">
	        <i class="icon-user-md"></i>
	        <span>Opcional En desarrollo</span>
	      </a>
	      <span class="triangle-button red"><i class="icon-circle-arrow-right"></i></span>
	    </div>
	  </div>
	 
	  <div class="row action-nav-row">
	    <div class="col-sm-3 action-nav-button">
	      <a href="#" title="Friends">
	        <i class="icon-facebook-sign"></i>
	        <span>Friends</span>
	      </a>
	    </div>
	
	    <div class="col-sm-3 action-nav-button">
	      <a href="#" title="Followers">
	        <i class="icon-twitter"></i>
	        <span>Followers</span>
	      </a>
	      <span class="triangle-button blue"><span class="inner">+8</span></span>
	    </div>
	  </div>
	  <div class="row action-nav-row">
		  	
	  
	  </div>
	  <div class="row action-nav-row">
	  		<div class="col-md-12">
	    	<!-- find me in partials/big_chart -->
	
			<div class="box">
			  <div class="box-header">
			    <div class="title">Estadisttica de la clinica</div>
			    <ul class="box-toolbar">
			      <li class="toolbar-link">
			        <a href="#" data-toggle="dropdown"><i class="icon-cog"></i></a>
			        <ul class="dropdown-menu">
			          <li><a href="#"><i class="icon-plus-sign"></i> Add</a></li>
			          <li><a href="#"><i class="icon-remove-sign"></i> Remove</a></li>
			          <li><a href="#"><i class="icon-pencil"></i> Edit</a></li>
			        </ul>
			      </li>
			    </ul>
			  </div>
			
			  <div class="box-content padded">
			    <div class="row">
			      
			      <div class="col-md-12" >
			        <div class="sine-chart" id="xchart-sine" ></div>
			      </div>
			    </div>
			  </div>
			</div>
	  </div>
  </div>

</div>
  </div>

<div class="col-md-6">
    <div class="box">
      <div class="box-header">
        <div class="title">Calendario de citas</div>
      </div>

      <div class="box-content">
        <div id="calendar"></div>
      </div>
    </div>
  </div>
  
</div>

<div class="row">
  

  <div class="col-md-12">
    <div class="box">
      <div class="box-header">
        <span class="title">Noticias</span>
        <ul class="box-toolbar">
          <li><span class="label label-blue">178</span></li>
        </ul>
      </div>
      <div class="box-content scrollable" style="height: 552px; overflow-y: auto">
        <!-- find me in partials/news_with_icons -->

<div class="box-section news with-icons">
  <div class="avatar blue"><i class="icon-ok icon-2x"></i></div>
  <div class="news-time">
    <span>06</span> jan
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">Twitter Bootstrap v3.0 is coming!</a></div>
    <div class="news-text">
      With 2.2.2 out the door, our attention has shifted almost entirely to the next major update to the project ...
    </div>
  </div>
</div>

<div class="box-section news with-icons">
  <div class="avatar green"><i class="icon-lightbulb icon-2x"></i></div>
  <div class="news-time">
    <span>11</span> feb
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">Ruby on Rails 4.0</a></div>
    <div class="news-text">
      Rails 4.0 is still unfinished, but it is shaping up to become a great release ...
    </div>
  </div>
</div>

<div class="box-section news with-icons">
  <div class="avatar purple"><i class="icon-mobile-phone icon-2x"></i></div>
  <div class="news-time">
    <span>04</span> mar
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">All about SCSS</a></div>
    <div class="news-text">
      Sass makes CSS fun again. Sass is an extension of CSS3, adding nested rules ...
    </div>
  </div>
</div>


    <div class="box-section news with-icons">
      <div class="avatar cyan"><i class="icon-ok icon-2x"></i></div>
      <div class="news-time">
        <span>22</span> dec
      </div>
      <div class="news-content">
        <div class="news-title"><a href="#">Twitter Bootstrap v3.0 is coming!</a></div>
        <div class="news-text">
          With 2.2.2 out the door, our attention has shifted almost entirely to the next major update to the project ...
        </div>
      </div>
    </div>


        <!-- find me in partials/news_with_icons -->

<div class="box-section news with-icons">
  <div class="avatar blue"><i class="icon-ok icon-2x"></i></div>
  <div class="news-time">
    <span>06</span> jan
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">Twitter Bootstrap v3.0 is coming!</a></div>
    <div class="news-text">
      With 2.2.2 out the door, our attention has shifted almost entirely to the next major update to the project ...
    </div>
  </div>
</div>

<div class="box-section news with-icons">
  <div class="avatar green"><i class="icon-lightbulb icon-2x"></i></div>
  <div class="news-time">
    <span>11</span> feb
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">Ruby on Rails 4.0</a></div>
    <div class="news-text">
      Rails 4.0 is still unfinished, but it is shaping up to become a great release ...
    </div>
  </div>
</div>

<div class="box-section news with-icons">
  <div class="avatar purple"><i class="icon-mobile-phone icon-2x"></i></div>
  <div class="news-time">
    <span>04</span> mar
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">All about SCSS</a></div>
    <div class="news-text">
      Sass makes CSS fun again. Sass is an extension of CSS3, adding nested rules ...
    </div>
  </div>
</div>


    <div class="box-section news with-icons">
      <div class="avatar cyan"><i class="icon-ok icon-2x"></i></div>
      <div class="news-time">
        <span>22</span> dec
      </div>
      <div class="news-content">
        <div class="news-title"><a href="#">Twitter Bootstrap v3.0 is coming!</a></div>
        <div class="news-text">
          With 2.2.2 out the door, our attention has shifted almost entirely to the next major update to the project ...
        </div>
      </div>
    </div>


        <!-- find me in partials/news_with_icons -->

<div class="box-section news with-icons">
  <div class="avatar blue"><i class="icon-ok icon-2x"></i></div>
  <div class="news-time">
    <span>06</span> jan
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">Twitter Bootstrap v3.0 is coming!</a></div>
    <div class="news-text">
      With 2.2.2 out the door, our attention has shifted almost entirely to the next major update to the project ...
    </div>
  </div>
</div>

<div class="box-section news with-icons">
  <div class="avatar green"><i class="icon-lightbulb icon-2x"></i></div>
  <div class="news-time">
    <span>11</span> feb
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">Ruby on Rails 4.0</a></div>
    <div class="news-text">
      Rails 4.0 is still unfinished, but it is shaping up to become a great release ...
    </div>
  </div>
</div>

<div class="box-section news with-icons">
  <div class="avatar purple"><i class="icon-mobile-phone icon-2x"></i></div>
  <div class="news-time">
    <span>04</span> mar
  </div>
  <div class="news-content">
    <div class="news-title"><a href="#">All about SCSS</a></div>
    <div class="news-text">
      Sass makes CSS fun again. Sass is an extension of CSS3, adding nested rules ...
    </div>
  </div>
</div>


    <div class="box-section news with-icons">
      <div class="avatar cyan"><i class="icon-ok icon-2x"></i></div>
      <div class="news-time">
        <span>22</span> dec
      </div>
      <div class="news-content">
        <div class="news-title"><a href="#">Twitter Bootstrap v3.0 is coming!</a></div>
        <div class="news-text">
          With 2.2.2 out the door, our attention has shifted almost entirely to the next major update to the project ...
        </div>
      </div>
    </div>


      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-md-12">
 

  </div>
</div>

  </div>
</div>
