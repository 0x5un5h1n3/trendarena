package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.service.UserService;
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
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.List;

@Path("/admin/add-new-category")
public class AdminAddNewCategoryController {
    @GET
    public Viewable category() {

        UserService userService = new UserService();
        List<User> users = userService.getAllUsers();

        return new Viewable("/frontend/add-new-category", users);
    }

    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response addProduct(@FormDataParam("cTitle") String cTitle,
                               @FormDataParam("cDesc") String cDesc,
                               @Context HttpServletRequest request) {


        try {
         // Create a new Category object and set the attributes
            Category c = new Category();
            c.setCategoryTitle(cTitle);
            c.setCategoryDescription(cDesc);



            // Category save
            CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
            cdao.saveCategory(c);


            HttpSession session = request.getSession();
            session.setAttribute("message", "Category Saved Successfully");

            return Response.ok().entity("Category Saved Successfully!").build();

        } catch (Exception e) {
            e.printStackTrace();
            // Return an error response
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while adding product").build();
        }
    }


}