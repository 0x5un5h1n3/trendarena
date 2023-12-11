package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.dao.UserDao;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.entity.Product;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.entity.UserType;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import com.ox5un5h1n3.web.trendarena.util.Encryption;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;

@Path("/admin/add-new-user")
public class AdminAddNewUserController {
    @GET
    public Viewable products() {

        UserService userService = new UserService();
        List<User> users = userService.getAllUsers();

        return new Viewable("/frontend/add-new-user", users);
    }

    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response addProduct(@FormDataParam("uName") String uName,
                               @FormDataParam("uEmail") String uEmail,
                               @FormDataParam("uPhone") String uPhone,
                               @FormDataParam("uAddress") String uAddress,
                               @FormDataParam("uCity") String uCity,
                               @FormDataParam("uPostalCode") String uPostalCode,
                               @FormDataParam("uUserType") UserType uUserType,
                               @FormDataParam("uPassword") String uPassword,
                               @Context HttpServletRequest request) {



        try {



            User user = new User();
            // Update the user attributes with the new values
            user.setName(uName);
            user.setEmail(uEmail);
            user.setPhone(uPhone);
            user.setAddress(uAddress);
            user.setCity(uCity);
            user.setPost_code(uPostalCode);
            user.setUserType(uUserType);
            user.setPassword(Encryption.encrypt(uPassword));

            // Create a new User object and set the attributes
            UserDao udao = new UserDao(HibernateUtil.getSessionFactory());
            udao.saveUser(user);


            HttpSession session = request.getSession();
            session.setAttribute("message", "User saved successfully");

            return Response.ok().entity("User Saved Successfully!").build();

        } catch (Exception e) {
            e.printStackTrace();
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while updating product").build();
        }
    }

}