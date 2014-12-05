package com.pradalabs.hackatons.config.seguridad;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.authentication.AuthenticationDetailsSource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;
import com.pradalabs.hackatons.model.seguridad.AppRole;
import com.pradalabs.hackatons.model.seguridad.UsuarioAutenticacion;
import com.pradalabs.hackatons.model.seguridad.UserEbolaCallCenter;
import com.pradalabs.hackatons.utils.Constants;

public class GaeAuthentication {
	private String pathIngresado;
	private static final String REGISTRATION_URL = "register.html";
	private static final String LOGIN_URL = "LoginUser.html";
	@SuppressWarnings("rawtypes")
	private AuthenticationDetailsSource ads = new WebAuthenticationDetailsSource();

	
	public void setPathIngresado(String pathIngresado) {
		this.pathIngresado = pathIngresado;
	}




	@SuppressWarnings("unchecked")
	public ServletResponse AutenticarUsuario(ServletRequest request,ServletResponse response, AuthenticationManager authenticationManager, AuthenticationFailureHandler failureHandler) throws IOException, ServletException{
		ServletResponse responseAutenticacion=response;
		 Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		   
		    
		    if (authentication == null) {
		      User googleUser = UserServiceFactory.getUserService().getCurrentUser();

		      if (googleUser != null) {
		        PreAuthenticatedAuthenticationToken token = new PreAuthenticatedAuthenticationToken(googleUser, null);
		        token.setDetails(ads.buildDetails(request));

		        try {
		          authentication = authenticationManager.authenticate(token);
		          SecurityContextHolder.getContext().setAuthentication(authentication);
		          if (authentication.getAuthorities().contains(AppRole.NEW_USER) && !validarListaRecursos(pathIngresado)) {
		            ((HttpServletResponse) responseAutenticacion).sendRedirect(REGISTRATION_URL);
		              return responseAutenticacion;
		          }
		        } catch (AuthenticationException e) {
		          failureHandler.onAuthenticationFailure((HttpServletRequest)request, (HttpServletResponse)response, e);
		          return responseAutenticacion;
		        }
		      }
		    }else
		    {
		    	if(authentication.getAuthorities().contains(AppRole.NEW_USER) && !validarListaRecursos(pathIngresado)){
		    	 ((HttpServletResponse) responseAutenticacion).sendRedirect(LOGIN_URL);
		    	 return responseAutenticacion;
		    	 }else{
		    		 authentication=null;
		    	 }
		    		
		    	 
		    }
		    return responseAutenticacion;
		
	}
	
	public ServletResponse AutenticarUsuario(UsuarioAutenticacion usuario,ServletRequest request,ServletResponse response, AuthenticationManager authenticationManager, AuthenticationFailureHandler failureHandler) throws IOException, ServletException{
		ServletResponse responseAutenticacion=response;
		AbstractAuthenticationToken authToken = null;
		PreAuthenticatedAuthenticationToken token = null;
		 boolean isPasswordCorecto=false;
		User googleUser=null;
		 Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		 if (authentication == null) {
			 if(usuario.getLogin() != null && usuario.getPassword() != null){
				 googleUser	=new User(usuario.getLogin(), "gmail.com", usuario.getLogin(), usuario.getPassword());
				 if (googleUser != null) {
					 authToken=(AbstractAuthenticationToken) ((HttpServletRequest)request).getAttribute(Constants.TOKEN);
					 UserEbolaCallCenter user =  new GaeDatastoreUserRegistry().findUser(googleUser.getEmail());
					 if(user != null){
						 isPasswordCorecto= this.verificarPasswordUserDataStore(googleUser,user);
					 }
					 if(authToken == null){
						 token = new PreAuthenticatedAuthenticationToken(googleUser, null);
						 token.setDetails(ads.buildDetails(request));
						 try {
							 if(isPasswordCorecto)
							 {
								 authentication = authenticationManager.authenticate(token);
								 SecurityContextHolder.getContext().setAuthentication(authentication);
								 if(authentication.getAuthorities().contains(AppRole.NEW_USER)){
									 ((HttpServletResponse) responseAutenticacion).sendRedirect(REGISTRATION_URL);
						              return responseAutenticacion;
								 }else
								 {
									 authToken=  new UsernamePasswordAuthenticationToken(user, user.hashCode(),authentication.getAuthorities());
									 ((HttpServletRequest) request).getSession().setAttribute(Constants.TOKEN, authToken);
								 }
							 }
							 
						 }catch(AuthenticationException e){
							 failureHandler.onAuthenticationFailure((HttpServletRequest)request, (HttpServletResponse)response, e);
					          return responseAutenticacion;
						 }
					 }else
						authentication = authenticationManager.authenticate(authToken);
					 	SecurityContextHolder.getContext().setAuthentication(authentication);
				 	}	
						 
				 }
			 }
		 
		return responseAutenticacion;
	}
	
	
	private boolean validarListaRecursos(String path){
		boolean resultado = false;
		for(String Url:Constants.RecursosSinSeguridad){
			if(path.contains(Url)){
				resultado = true;
				return resultado;
			}
		}
		return resultado;
	}
	private boolean verificarPasswordUserDataStore(User googleUser,UserEbolaCallCenter user){
		boolean respuesta= false;
		if(user.getPassword().equals(googleUser.getFederatedIdentity())){
			respuesta=true;
		}
		return respuesta;
	}
	

}
