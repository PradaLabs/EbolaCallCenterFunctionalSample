package com.pradalabs.hackatons.utils;

import java.util.Arrays;
import java.util.List;

public final class Constants {

	
	static public final String PATH_ADMIN="/_ah/";
	static public  final String PATH_AUTENTICACION="/AutenticacionGoogle";
	static public  final String PATH_AUTENTICACION_SERVICE="/rest/Autenticacion/AutenticacionUserPass";
	static public  final String PATH_ADD_USER="/rest/Usuario/insertarUsuario";
	public static final String PATH_GOOGLE_ATH = "";
	static public final String TOKEN="token";
	
	static public  final  List<String> RecursosSinSeguridad=Arrays.asList( Constants.PATH_ADMIN,
			Constants.PATH_AUTENTICACION,
			Constants.PATH_AUTENTICACION_SERVICE);
	public static final String PATH_LOGIN = "/LoginUser.html";
	public static final String PATH_LOG_OUT = "/googleLogout";
	
	
	
	public static final String CLINICA="clinica";
	public static final String CLAVE_CLINICA="emailClinica";
	public static final String CLAVE_PACIENTE="paciente";
	public static final String RELACION_USUARIO_CLINICA="relacionUsuarioClinica";
	public static final String CLAVE_RELACION_USUARIO_CLINICA="emailUsuario";
	
	
}
