package com.ox5un5h1n3.web.trendarena.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.UriBuilder;

@Path("/logout")
public class LogoutController {

    @GET
    public Response logoutAction(@Context HttpServletRequest request){
        String contextPath = request.getContextPath();
        HttpSession session = request.getSession(false); // Get the current session without creating a new one

        if (session != null) {
            session.invalidate(); // Destroy the session
        }

        return Response.status(Response.Status.FOUND).location(UriBuilder.fromUri(contextPath+"/login").build()).build();
    }
}
