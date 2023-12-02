package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.UserDao;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import com.ox5un5h1n3.web.trendarena.util.Encryption;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/login")
public class LoginController {

    @GET
    public Viewable index() {
        return new Viewable("/frontend/auth/login");
    }

    @POST
    public String loginAction(User user, @Context HttpServletRequest request) {
        if (user.getEmail().isEmpty()) {
            return "Please enter your Email!";
        } else if (user.getPassword().isEmpty()) {
            return "Please enter your Password!";
        } else {


            UserService userService = new UserService();
            User isUser = userService.getByEmailAndPassword(user.getEmail(), Encryption.encrypt(user.getPassword()));

            if (isUser != null) {


                request.getSession().setAttribute("userLogged", user);
                request.getSession().setAttribute("isUserLoggedIn", true);

                if (isUser.getUserType().toString().equals("ADMIN")) {
                    return "admin-login-success";
                } else {
                    return "success";
                }


            } else {
                return "Invalid email or password";
            }

        }
    }
}
