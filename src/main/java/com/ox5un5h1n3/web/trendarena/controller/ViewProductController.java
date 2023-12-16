package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.entity.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.List;

@Path("/")
public class HomeController {

    @GET
    public Viewable index(@Context HttpServletRequest request) {
        // Check if user is logged in
        boolean isLoggedIn = false;
        User loggedUser = null;

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("isUserLoggedIn") != null && (boolean) session.getAttribute("isUserLoggedIn")) {
            isLoggedIn = true;
            loggedUser = (User) session.getAttribute("userLogged");
        }

        // Pass the logged-in user's name or "My Account" to the view
        String userName = isLoggedIn ? loggedUser.getName() : "My Account";

        return new Viewable("/frontend/home", userName);
    }
}
