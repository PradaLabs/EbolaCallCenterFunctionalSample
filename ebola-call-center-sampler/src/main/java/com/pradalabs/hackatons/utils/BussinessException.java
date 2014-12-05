package com.pradalabs.hackatons.utils;


public class BussinessException extends Exception {


	private static final long serialVersionUID = 1L;

	public BussinessException() {
		super();
	}
	
	public static final String EXCEPCION_ERROR = "ERROR";
	public static final String EXCEPCION_ADVERTENCIA = "ADVERTENCIA";
	public static final String EXCEPCION_DEPURACION = "DEPURACION";
	private final String MENSAJE_ADMIN_SISTEMA = "Favor comunicarse con el administrador del Systema andres.prada.labs@gmail.com.";
	
	private Utils utils= new Utils();
	
	private String mensajeUsuario;
	private String mensajeTecnico;
	private String tipoExcepcion; // codigo que determina que tan grave es la exepcion
	private String claseGeneradora;
	
	public BussinessException(String mensajeUsuario, String mensajeTecnico, String tipoExcepcion) { 
		super();
		this.mensajeUsuario = mensajeUsuario + MENSAJE_ADMIN_SISTEMA;
		this.mensajeTecnico = mensajeTecnico;
		this.tipoExcepcion = tipoExcepcion;
		
	}
	public BussinessException(String mensajeUsuario, Throwable trazaExcepcion, String claseGeneradora, String tipoExcepcion) {
		super();
		this.mensajeUsuario = mensajeUsuario + MENSAJE_ADMIN_SISTEMA;
		this.mensajeTecnico = utils.obtenerStringTrazaExcepcion(trazaExcepcion);
		this.claseGeneradora = claseGeneradora;
		this.tipoExcepcion = tipoExcepcion;
	}

	public BussinessException(String message, Throwable cause) {
		super(message, cause);
	}

	public BussinessException(String message) {
		super(message);
		
	}

	public BussinessException(Throwable cause) {
		super(cause);
	}

	public String getMensajeUsuario() {
		return mensajeUsuario;
	}

	public void setMensajeUsuario(String mensajeUsuario) {
		this.mensajeUsuario = mensajeUsuario;
	}

	public String getMensajeTecnico() {
		return mensajeTecnico;
	}

	public void setMensajeTecnico(String mensajeTecnico) {
		this.mensajeTecnico = mensajeTecnico;
	}

	public String getTipoExcepcion() {
		return tipoExcepcion;
	}

	public void setTipoExcepcion(String tipoExcepcion) {
		this.tipoExcepcion = tipoExcepcion;
	}

	public String getClaseGeneradora() {
		return claseGeneradora;
	}

	public void setClaseGeneradora(String claseGeneradora) {
		this.claseGeneradora = claseGeneradora;
	}
	
	
}
