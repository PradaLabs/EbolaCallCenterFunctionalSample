package com.pradalabs.hackatons.config.seguridad;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

import com.pradalabs.hackatons.utils.Constants;



/*
 * El aplicativo entra a esta clase cuando se hace un request y no existe un loggeo  el redirecciona a la pagina del login.
 * */
public class GoogleAccountsAuthenticationEntryPoint implements AuthenticationEntryPoint {
	  public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException)
	      throws IOException, ServletException {
	    response.sendRedirect(request.getContextPath()+ Constants.PATH_LOGIN);
	  }
}


