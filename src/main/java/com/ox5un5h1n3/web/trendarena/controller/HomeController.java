package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.inject.Singleton;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;

@Path("/")
//@Singleton
public class HomeController {

    @GET
    public String index(){
        return "Test";
    }
}
