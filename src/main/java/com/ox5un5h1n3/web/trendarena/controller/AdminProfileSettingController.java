package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/admin/profile-setting")
public class AdminProfileSettingController {

    @GET
    public Viewable index(){


        return new Viewable("/frontend/profile-setting");
    }
}
