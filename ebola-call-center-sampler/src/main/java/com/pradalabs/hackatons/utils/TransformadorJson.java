package com.pradalabs.hackatons.utils;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;





public class TransformadorJson {

	public String transformarObjeto(Object objeto) throws IOException {
		ObjectMapper mapeador = new ObjectMapper();
		DateFormat formatoFechas = new SimpleDateFormat("yyyy-MM-dd");
		formatoFechas.setTimeZone(TimeZone.getTimeZone("GMT"));
		mapeador.setDateFormat(formatoFechas);
		return mapeador.writeValueAsString(objeto);
	}

	public Object transformarObjetoInversa(String jsonObjeto, Class<?> claseObjeto) throws JsonParseException, JsonMappingException, IOException {
		ObjectMapper mapeador = new ObjectMapper();
		DateFormat formatoFechas = new SimpleDateFormat("yyyy-MM-dd");
		formatoFechas.setTimeZone(TimeZone.getTimeZone("GMT"));
		mapeador.setDateFormat(formatoFechas);
		return mapeador.readValue(jsonObjeto, claseObjeto);
	}
}