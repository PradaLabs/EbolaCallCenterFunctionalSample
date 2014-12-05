package com.pradalabs.hackatons.config.seguridad;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.web.filter.GenericFilterBean;

import com.pradalabs.hackatons.model.seguridad.UsuarioAutenticacion;
import com.pradalabs.hackatons.utils.Constants;

public class GaeAuthenticationFilter extends GenericFilterBean {
	private GaeAuthentication gaeAuthentication = new GaeAuthentication();
	private AuthenticationManager authenticationManager;
	private AuthenticationFailureHandler failureHandler = new SimpleUrlAuthenticationFailureHandler();
	private UsuarioAutenticacion usuarioAutenticacion=null;

	  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		  	
		  
		   	String pathIngresado =((HttpServletRequest) request).getRequestURI();
	    	
	    	 switch (pathIngresado) {
	    	  case Constants.PATH_AUTENTICACION_SERVICE :
	    		  usuarioAutenticacion=new UsuarioAutenticacion();
		    		usuarioAutenticacion.setLogin(request.getParameter("login"));
		    		usuarioAutenticacion.setPassword(request.getParameter("password"));
		    		gaeAuthentication.setPathIngresado(pathIngresado);
			    	response=gaeAuthentication.AutenticarUsuario(usuarioAutenticacion,request, response,authenticationManager,failureHandler);
	    		  break;
	    	  case Constants.PATH_ADD_USER:
	    		  usuarioAutenticacion=new UsuarioAutenticacion();
		    		usuarioAutenticacion.setLogin(((HttpServletRequest)request).getParameter("Username"));
		    		usuarioAutenticacion.setPassword(((HttpServletRequest)request).getParameter("Password"));
		    		gaeAuthentication.setPathIngresado(pathIngresado);
			    	response=gaeAuthentication.AutenticarUsuario(usuarioAutenticacion,request, response,authenticationManager,failureHandler);
	    		  break;
	    	  case Constants.PATH_LOG_OUT:
	    		  break;
	    	  default:
	    		  gaeAuthentication.setPathIngresado(pathIngresado);
	  	    	  response=gaeAuthentication.AutenticarUsuario(request, response,authenticationManager,failureHandler);
	    	       break;
	    	 }
	    	
	    chain.doFilter(request, response);
	  }

	  public void setAuthenticationManager(AuthenticationManager authenticationManager) {
	    this.authenticationManager = authenticationManager;
	  }

	  public void setFailureHandler(AuthenticationFailureHandler failureHandler) {
	    this.failureHandler = failureHandler;
	  }
	  
	  
	}
