package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.entity.Product;
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

@Path("/admin/delete-product/{id}")
public class AdminDeleteProductController {

    @GET
    public Viewable index(){

        return new Viewable("/frontend/products");
    }

    @GET
@Consumes(MediaType.APPLICATION_JSON)
    public Response index(@PathParam("id") int id, @Context HttpServletRequest request) {

        String contextPath = request.getContextPath();
        try {
            ProductDao pdao = new ProductDao(HibernateUtil.getSessionFactory());


                    // Delete the product in the database
                    pdao.deleteProduct(id);

                    HttpSession session = request.getSession();
                    session.setAttribute("message", "Product Deleted Successfully");

            return Response.status(Response.Status.FOUND).location(UriBuilder.fromUri(contextPath+"/admin/products/").build()).build();
//                    return Response.ok().entity("Product Deleted Successfully!").build();

                } catch (Exception e) {
                    e.printStackTrace();
                    return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while updating product").build();
                }


//        return new Viewable("/frontend/products");
            }
        }
