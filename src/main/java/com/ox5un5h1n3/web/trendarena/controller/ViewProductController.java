package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/view-product")
public class ViewProductController {

    @GET
    public Viewable index(@Context HttpServletRequest request) {


        return new Viewable("/frontend/view-product");
    }
}
