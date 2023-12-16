package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/forgot-password")
public class ForgotPasswordController {

    @GET
    public Viewable index() {
        return new Viewable("/frontend/forgot-password");
    }
}
