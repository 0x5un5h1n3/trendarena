package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.entity.Product;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/cart")
public class CartController {

    @GET
    public Viewable index(){


        return new Viewable("/frontend/cart");
    }
}
