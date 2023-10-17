package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.validation.constraints.NotNull;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.QueryParam;
import org.glassfish.jersey.server.mvc.Viewable;


@Path("/")
public class HomeController {

    @GET
//    public Viewable index(@QueryParam("name") @NotNull String name){
//        return new Viewable("/frontend/home");
//    }
    public Viewable index(){
        return new Viewable("/frontend/home");
    }
}
