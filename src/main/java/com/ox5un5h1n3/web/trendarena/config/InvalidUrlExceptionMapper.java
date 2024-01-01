package com.ox5un5h1n3.web.trendarena.config;

import jakarta.ws.rs.NotFoundException;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.ExceptionMapper;
import jakarta.ws.rs.ext.Provider;

@Provider
public class InvalidUrlExceptionMapper implements ExceptionMapper<NotFoundException> {

    @Override
    public Response toResponse(NotFoundException ex) {
        // Redirect to the 404 page or return an appropriate error response
        return Response.status(Response.Status.NOT_FOUND).entity("404: Page not found!").build();
    }
}
