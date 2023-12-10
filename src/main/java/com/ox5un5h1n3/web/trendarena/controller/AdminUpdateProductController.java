package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dto.RegisterDTO;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import com.ox5un5h1n3.web.trendarena.util.Encryption;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.UUID;

@Path("/register")
public class AdminUpdateProductController {

    @GET
    public Viewable index(){
        return new Viewable("/frontend/update-product");
    }
}
