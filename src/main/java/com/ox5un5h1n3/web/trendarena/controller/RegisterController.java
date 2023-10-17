package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dto.RegisterDTO;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import com.ox5un5h1n3.web.trendarena.util.Encryption;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;
import org.hibernate.Session;

import java.util.UUID;

@Path("/register")
public class RegisterController {

    @GET
    public Viewable index(){
        return new Viewable("/frontend/auth/register");
    }
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(RegisterDTO registerDTO){
        UserService userService = new UserService();
        User byEmail = userService.getByEmail(registerDTO.getEmail());

        if(byEmail != null){
            return Response.status(Response.Status.BAD_REQUEST).entity("Email Already Exists.").build();
        }else {
            User user = new User();
//            user.setName(registerDTO.getName());
            user.setEmail(registerDTO.getEmail());
            user.setPassword(Encryption.encrypt(registerDTO.getPassword()));

            String verificationCode = UUID.randomUUID().toString();

            user.setVerification_code(verificationCode);

            //
            userService.save(user);
            return Response.ok().entity("Register Successful..").build();
        }
    }
}
