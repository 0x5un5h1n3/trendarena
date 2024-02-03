package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CartDao;
import com.ox5un5h1n3.web.trendarena.entity.CartItem;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.ArrayList;
import java.util.List;

@Path("/cart")
public class CartController {
    @POST
    public Viewable addToCart(CartItem cartItem, @Context HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("userLogged");
        if (user != null) {
            // Save the cart item to the database
            CartDao cartDao = new CartDao(HibernateUtil.getSessionFactory());
            cartDao.saveCartItem(cartItem, user);
        } else {
            // Add the cart item to the session cart
            List<CartItem> cartItems = (List<CartItem>) request.getSession().getAttribute("cartItems");
            if (cartItems == null) {
                cartItems = new ArrayList<>();
            }
            cartItems.add(cartItem);
            request.getSession().setAttribute("cartItems", cartItems);
        }
        return new Viewable("/frontend/cart");
    }


    @GET
    public Viewable index() {
        return new Viewable("/frontend/cart");
    }
}