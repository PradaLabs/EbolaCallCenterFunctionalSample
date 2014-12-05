package com.pradalabs.hackatons.servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;


public class CerrarSesionGoogle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = UserServiceFactory.getUserService();
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		String UrlLogoutgoogle=userService.createLogoutURL("/sign-out");
		
	resp.sendRedirect(UrlLogoutgoogle);
	
	}
}
