//package com.ox5un5h1n3.web.trendarena.controller;
//
//import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
//import com.ox5un5h1n3.web.trendarena.entity.Cart;
//import com.ox5un5h1n3.web.trendarena.entity.CartItem;
//import com.ox5un5h1n3.web.trendarena.entity.Product;
//import com.ox5un5h1n3.web.trendarena.entity.User;
//import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpSession;
//import jakarta.ws.rs.*;
//import jakarta.ws.rs.core.Context;
//import jakarta.ws.rs.core.Response;
//import org.glassfish.jersey.server.mvc.Viewable;
//import org.hibernate.Session;
//import org.hibernate.Transaction;
//
//import java.math.BigDecimal;
//import java.net.URI;
//import java.util.List;
//
//@Path("/cart")
//public class CartController {
//
//    @GET
//    public Response getCart(@Context HttpServletRequest request) {
//        // Check if the user is logged in
//        if (isLoggedIn()) {
//            // Fetch cart items from the database
//            List<CartItem> cartItems = fetchCartItemsFromDatabase();
//            // Process cart items from the database
//            processCartItems(cartItems);
//            return Response.ok().entity(cartItems).build();
//        } else {
//            // Retrieve cart from the session
//            Cart cart = getSessionCart(request);
//            return Response.ok().entity(cart).build();
//        }
//    }
//
//    @POST
//    public Response addToCart(CartItem cartItem, @Context HttpServletRequest request) {
//        // Check if the user is logged in
//        if (isLoggedIn()) {
//            // Save cart item to the database
//            saveCartItemToDatabase(cartItem);
//            return Response.ok().build();
//        } else {
//            // Add cart item to the session cart
//            Cart cart = getSessionCart(request);
//            cart.getCartItems().add(cartItem);
//            return Response.ok().build();
//        }
//    }
//
//    @PUT
//    @Path("/{cartItemId}")
//    public Response updateCartItem(@PathParam("cartItemId") Long cartItemId, CartItem updatedCartItem) {
//        // Check if the user is logged in
//        if (isLoggedIn()) {
//            // Fetch the existing cart item from the database based on its ID
//            CartItem existingCartItem = getCartItemFromDatabase(cartItemId);
//            if (existingCartItem != null) {
//                // Update the existing cart item with the new values
//                existingCartItem.setProductName(updatedCartItem.getProductName());
//                existingCartItem.setDiscountedPrice(updatedCartItem.getDiscountedPrice());
//                // Save the updated cart item to the database
//                saveCartItemToDatabase(existingCartItem);
//                return Response.ok().build();
//            } else {
//                return Response.status(Response.Status.NOT_FOUND).build();
//            }
//        } else {
//            return Response.status(Response.Status.UNAUTHORIZED).build();
//        }
//    }
//
//    @DELETE
//    @Path("/{cartItemId}")
//    public Response removeCartItem(@PathParam("cartItemId") Long cartItemId) {
//        // Check if the user is logged in
//        if (isLoggedIn()) {
//            // Fetch the existing cart item from the database based on its ID
//            CartItem existingCartItem = getCartItemFromDatabase(cartItemId);
//            if (existingCartItem != null) {
//                // Remove the cart item from the database
//                removeCartItemFromDatabase(existingCartItem);
//                return Response.ok().build();
//            } else {
//                return Response.status(Response.Status.NOT_FOUND).build();
//            }
//        } else {
//            return Response.status(Response.Status.UNAUTHORIZED).build();
//        }
//    }
//
//    private boolean isLoggedIn() {
//        // Implement the logic to check if the user is logged in
//
//        // Example implementation: Check if the user is authenticated in the current session
//        HttpServletRequest request = ((HttpServletRequest) requestContext.getProperty("HttpServletRequest"));
//        HttpSession session = request.getSession(false);
//        return session != null && session.getAttribute("user") != null;
//    }
//
//    private List<CartItem> fetchCartItemsFromDatabase() {
//        // Implement the logic to fetch cart items from the database
//
//        // Example implementation: Use Hibernate to fetch cart items from the database
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            return session.createQuery("FROM CartItem", CartItem.class).list();
//        }
//    }
//
//    private void processCartItems(List<CartItem> cartItems) {
//        // Implement any processing required for the cart items fetched from the database
//
//        // Example processing: Apply any business logic or transformations to the cart items
//        for (CartItem cartItem : cartItems) {
//            cartItem.setProductName(cartItem.getProductName().toUpperCase());
//        }
//    }
//
//    private void saveCartItemToDatabase(CartItem cartItem) {
//        // Implement the logic to save cart item to the database
//
//        // Example implementation: Use Hibernate to save cart item to the database
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            Transaction transaction = session.beginTransaction();
//            session.saveOrUpdate(cartItem);
//            transaction.commit();
//        }
//    }
//
//    private void removeCartItemFromDatabase(CartItem cartItem) {
//        // Implement the logic to remove cart item from the database
//
//        // Example implementation: Use Hibernate to remove cart item from the database
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            Transaction transaction = session.beginTransaction();
//            session.delete(cartItem);
//            transaction.commit();
//        }
//    }
//
//    private CartItem getCartItemFromDatabase(Long cartItemId) {
//        // Implement the logic to retrieve a cart item from the database based on its ID
//
//        // Example implementation: Use Hibernate to retrieve cart item from the database
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            return session.get(CartItem.class, cartItemId);
//        }
//    }
//
//    private Cart getSessionCart() {
//        // Retrieve cart from the session
//        // You need to implement the logic to manage the session and retrieve the cart object
//
//        // Example implementation: Retrieve cart from the HttpSession object
//        HttpServletRequest request = ((HttpServletRequest) requestContext.getProperty("HttpServletRequest"));
//        HttpSession session = request.getSession(true);
//
//        Cart cart = (Cart) session.getAttribute("cart");
//        if (cart == null) {
//            cart = new Cart();
//            session.setAttribute("cart", cart);
//        }
//        return cart;
//    }
//}