package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.dao.UserDao;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.entity.Product;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.entity.UserType;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.*;
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
import java.util.UUID;

@Path("/admin/update-user/{id}")
public class AdminUpdateUserController {

    @GET
    public Viewable index(@PathParam("id") int id, @Context HttpServletRequest request){

        UserDao dao = new UserDao(HibernateUtil.getSessionFactory());
        User user = dao.getUserById(id);


        request.setAttribute("user", user);


        return new Viewable("/frontend/update-user");
    }

    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @POST
    public Response getProductById(@PathParam("id") int id,
                                   @FormDataParam("updated_uName") String updated_uName,
                                   @FormDataParam("updated_uEmail") String updated_uEmail,
                                   @FormDataParam("updated_uPhone") String updated_uPhone,
                                   @FormDataParam("updated_uAddress") String updated_uAddress,
                                   @FormDataParam("updated_uCity") String updated_uCity,
                                   @FormDataParam("updated_uPostalCode") String updated_uPostalCode,
                                   @FormDataParam("updated_uUserType") UserType updated_uUserType,
                                   @Context HttpServletRequest request) {

        try {
            UserDao udao = new UserDao(HibernateUtil.getSessionFactory());
            User user = udao.getUserById(id);

            // Update the user attributes with the new values
            user.setName(updated_uName);
            user.setEmail(updated_uEmail);
            user.setPhone(updated_uPhone);
            user.setAddress(updated_uAddress);
            user.setCity(updated_uCity);
            user.setPost_code(updated_uPostalCode);
            user.setUserType(updated_uUserType);

            // Update the user in the database
            udao.updateUser(user);

            HttpSession session = request.getSession();
            session.setAttribute("message", "User updated successfully");

            return Response.ok().entity("User Updated Successfully!").build();

        } catch (Exception e) {
            e.printStackTrace();
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while updating product").build();
        }
    }
}
