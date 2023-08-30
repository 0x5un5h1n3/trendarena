package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dto.AuthDTO;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/signup")
public class SignUpController {
    @GET
    public Viewable index(){
        return new Viewable("/frontend/auth/register");
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response registerAction(AuthDTO authDTO){
        System.out.println(authDTO.getEmail());
        return Response.ok().build();
    }
}
