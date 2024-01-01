package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.dao.UserDao;
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

@Path("/admin/delete-user/{id}")
public class AdminDeleteUserController {

    @GET
    public Viewable index(){

        return new Viewable("/frontend/all-users");
    }

    @GET
@Consumes(MediaType.APPLICATION_JSON)
    public Response index(@PathParam("id") int id, @Context HttpServletRequest request) {

        String contextPath = request.getContextPath();
        try {
            UserDao udao = new UserDao(HibernateUtil.getSessionFactory());


                    // Delete the product in the database
                    udao.deleteUser(id);

                    HttpSession session = request.getSession();

                    session.setAttribute("message", "User Deleted Successfully");
            return Response.status(Response.Status.FOUND).location(UriBuilder.fromUri(contextPath+"/admin/all-users").build()).build();

                } catch (Exception e) {
                    e.printStackTrace();
                    return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while updating product").build();
                }

            }
        }
