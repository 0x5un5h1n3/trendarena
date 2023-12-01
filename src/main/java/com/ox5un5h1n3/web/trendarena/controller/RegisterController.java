package com.ox5un5h1n3.web.trendarena.controllers;

import com.ox5un5h1n3.web.trendarena.entity.User;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/register")
public class RegisterController {

    @GET
    public Viewable index(){
        return new Viewable("/frontend/auth/register");
    }

    @POST
    public String registerAction(User user){
        if(user.getUsername().isEmpty()){
            return "Please enter the username";
        } else if (user.getPassword().isEmpty()){
            return "Please enter the password";
        } else {
            UserService userService = new UserService();
            userService.saveUser(user);
            return "success";
        }
    }
}
