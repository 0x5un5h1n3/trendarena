package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.List;

@Path("/admin/all-users")
public class AdminAllUsersController {

    @GET
    public Viewable users(){

        UserService userService = new UserService();
        List<User> users = userService.getAllUsers();

        return new Viewable("/frontend/all-users",users);
    }
}
