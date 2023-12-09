package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.entity.Product;
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
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;

@Path("/admin/add-new-product")
public class AdminAddNewProductController {
    @GET
    public Viewable products() {

        UserService userService = new UserService();
        List<User> users = userService.getAllUsers();

        return new Viewable("/frontend/add-new-product", users);
    }

    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response addProduct(@FormDataParam("pPic") InputStream fileInputStream,
                               @FormDataParam("pPic") FormDataContentDisposition fileDetail,
                               @FormDataParam("pName") String pName,
                               @FormDataParam("pDesc") String pDesc,
                               @FormDataParam("pPrice") int pPrice,
                               @FormDataParam("pDiscount") int pDiscount,
                               @FormDataParam("pQuantity") int pQuantity,
                               @FormDataParam("pCategory") int pCategory,
                               @Context HttpServletRequest request) {

        String fileName = UUID.randomUUID() + "_" + fileDetail.getFileName();

        // Specify the directory to save the uploaded file
        String directoryPath = request.getServletContext().getRealPath("img") + File.separator + "products";


        try {
            // Create the directory if it doesn't exist
            File directory = new File(directoryPath);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // Save the file to the directory
            File file = new File(directory, fileName);
            Files.copy(fileInputStream, file.toPath(), StandardCopyOption.REPLACE_EXISTING);

            // Create a new Product object and set the attributes
            Product p = new Product();
            p.setpName(pName);
            p.setpDesc(pDesc);
            p.setpPrice(pPrice);
            p.setpDiscount(pDiscount);
            p.setpQuantity(pQuantity);
            p.setpPhoto(fileName);

            // Save the Product object to the database
            // Get category by id
            CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
            Category category = cdao.getCategoryById(pCategory);
            p.setCategory(category);

            // Product save
            ProductDao pdao = new ProductDao(HibernateUtil.getSessionFactory());
            pdao.saveProduct(p);


            HttpSession session = request.getSession();
            session.setAttribute("message", "Product added successfully");

            return Response.ok().entity("Product Saved Successfully!").build();

        } catch (Exception e) {
            e.printStackTrace();
            // Return an error response
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while adding product").build();
        }
    }


}