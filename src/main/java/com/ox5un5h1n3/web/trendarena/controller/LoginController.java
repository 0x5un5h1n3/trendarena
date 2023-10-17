package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dto.AuthDTO;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/login")
public class LoginController {
    @GET
    public Viewable index(){
        return new Viewable("/frontend/auth/login");
    }
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response registerAction(AuthDTO authDTO){
        System.out.println(authDTO.getEmail());
        return Response.ok().build();
    }
}
