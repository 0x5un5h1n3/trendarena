package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.entity.Product;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@Path("/product")
public class ProductController {

    @Context
    private HttpServletRequest request;

    @POST
    @Path("/addCategory")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response addCategory() {

        String title = request.getParameter("catTitle");
        String description = request.getParameter("catDescription");

        Category category = new Category();
        category.setCategoryTitle(title);
        category.setCategoryDescriptioin(description);

        CategoryDao categoryDao = new CategoryDao(HibernateUtil.getSessionFactory());
        int catId = categoryDao.saveCategory(category);

        HttpSession httpsession = request.getSession();
        httpsession.setAttribute("message", "Category added successfully: " + catId);

        return Response.ok().build();
    }

}