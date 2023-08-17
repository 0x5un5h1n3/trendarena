package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.inject.Singleton;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
//@Singleton
public class HomeController {

    @GET
    public Viewable index(){
        return new Viewable("/frontend/home");
    }
}
