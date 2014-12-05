package com.pradalabs.hackatons.utils;

public class TechnicalException extends BussinessException {

	private static final long serialVersionUID = 1L;
	private final String MENSAJE_ADMIN_SISTEMA = "Error del systema favor comunicarse con el proveedor del systema";
	
	public TechnicalException()  {
		super();
	}


	public TechnicalException(String message, Throwable cause) {
		super(message, cause);
	}

	public TechnicalException(String message) {
		super(message);
	}

	public TechnicalException(Throwable cause) {
		super(cause);
	}


	public String getMENSAJE_ADMIN_SISTEMA() {
		return MENSAJE_ADMIN_SISTEMA;
	}
	
}
