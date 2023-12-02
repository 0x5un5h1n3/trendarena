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

    @POST
    @Path("/addProduct")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response addProduct() throws ServletException, IOException {
        String pName = request.getParameter("pName");
        String pDesc = request.getParameter("pDesc");
        int pPrice = Integer.parseInt(request.getParameter("pPrice"));
        int pDiscount = Integer.parseInt(request.getParameter("pDiscount"));
        int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
        int catId = Integer.parseInt(request.getParameter("catId"));
        Part part = request.getPart("pPic");

        Product p = new Product();
        p.setpName(pName);
        p.setpDesc(pDesc);
        p.setpPrice(pPrice);
        p.setpDiscount(pDiscount);
        p.setpQuantity(pQuantity);
        p.setpPhoto(part.getSubmittedFileName());

        CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
        Category category = cdao.getCategoryById(catId);
        p.setCategory(category);

        ProductDao pdao = new ProductDao(HibernateUtil.getSessionFactory());
        pdao.saveProduct(p);

        try {
            String path = request.getServletContext().getRealPath("img") + File.separator + "products" + File.separator;

            part.getSubmittedFileName();

            FileOutputStream fos = new FileOutputStream(path);

            InputStream is = part.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);

            fos.write(data);
            fos.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        HttpSession httpsession = request.getSession();
        httpsession.setAttribute("message", "Product added successfully:");

        return Response.ok().build();
    }

}