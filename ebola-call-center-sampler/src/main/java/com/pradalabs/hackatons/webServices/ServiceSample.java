package com.pradalabs.hackatons.webServices;


import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/jsonServices")
public class ServiceSample {
	
		@POST
		@Path("/send")
		@Consumes(MediaType.APPLICATION_JSON)
		@Produces(MediaType.APPLICATION_JSON)
		public String consumeJSON( String student ) {
			return student;
		}

}
