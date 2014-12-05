package com.pradalabs.hackatons.config.seguridad;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;




public class AutenticacionServelet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private  String UrlRetorno="";
	@Override
	    public void doGet(HttpServletRequest req, HttpServletResponse resp)
	            throws IOException {
		
		try{
			 Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			 if(authentication != null){
				 authentication = null;
				 SecurityContextHolder.getContext().setAuthentication(authentication);
			 }
			UrlRetorno = req.getParameter("urlRetorno");
			UserService userService = UserServiceFactory.getUserService();
			String urlGoogle=userService.createLoginURL(UrlRetorno);
			resp.sendRedirect(urlGoogle);
				
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("AutenticacionServelet.doGet()");
		}
	}
	
	
}
