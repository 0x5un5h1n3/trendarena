package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.UriBuilder;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/admin/delete-category/{id}")
public class AdminDeleteCategoryController {

    @GET
    public Viewable index() {

        return new Viewable("/frontend/category");
    }

    @GET
    @Consumes(MediaType.APPLICATION_JSON)
    public Response index(@PathParam("id") int id, @Context HttpServletRequest request) {

        String contextPath = request.getContextPath();
        try {
            CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());


            // Delete the category in the database
            cdao.deleteCategory(id);

            HttpSession session = request.getSession();

            session.setAttribute("message", "Category Deleted Successfully");
            return Response.status(Response.Status.FOUND).location(UriBuilder.fromUri(contextPath + "/admin/category").build()).build();
//            return Response.status(Response.Status.OK).entity("Category Deleted Successfully").build();

        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while updating product").build();
        }

    }
}
