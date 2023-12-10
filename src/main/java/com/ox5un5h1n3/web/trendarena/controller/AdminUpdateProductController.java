package com.ox5un5h1n3.web.trendarena.controller;

import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.dao.UserDao;
import com.ox5un5h1n3.web.trendarena.dto.RegisterDTO;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.entity.Product;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.service.UserService;
import com.ox5un5h1n3.web.trendarena.util.Encryption;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.*;
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
import java.util.UUID;

@Path("/admin/update-product/{id}")
public class AdminUpdateProductController {

    @GET
    public Viewable index(@PathParam("id") int id, @Context HttpServletRequest request){

        ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
        Product product = dao.getProductById(id);


        request.setAttribute("product", product);


        return new Viewable("/frontend/update-product");
    }

    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @POST
    public Response getProductById(@PathParam("id") int id,
                                   @FormDataParam("updated_pPic") InputStream fileInputStream,
                                   @FormDataParam("updated_pPic") FormDataContentDisposition fileDetail,
                                   @FormDataParam("updated_pName") String updated_pName,
                                   @FormDataParam("updated_pDesc") String updated_pDesc,
                                   @FormDataParam("updated_pPrice") int updated_pPrice,
                                   @FormDataParam("updated_pDiscount") int updated_pDiscount,
                                   @FormDataParam("updated_pQuantity") int updated_pQuantity,
                                   @FormDataParam("updated_pCategory") int updated_pCategory,
                                   @Context HttpServletRequest request) {

        try {
            ProductDao pdao = new ProductDao(HibernateUtil.getSessionFactory());
            Product product = pdao.getProductById(id);

            // Update the product attributes with the new values
            product.setpName(updated_pName);
            product.setpDesc(updated_pDesc);
            product.setpPrice(updated_pPrice);
            product.setpDiscount(updated_pDiscount);
            product.setpQuantity(updated_pQuantity);
            // Update the product photo if a new photo is provided
            if (fileInputStream != null && fileDetail != null) {
                String fileName = UUID.randomUUID() + "_" + fileDetail.getFileName();
                String directoryPath = request.getServletContext().getRealPath("img") + File.separator + "products";
                File directory = new File(directoryPath);
                if (!directory.exists()) {
                    directory.mkdirs();
                }
                File file = new File(directory, fileName);
                Files.copy(fileInputStream, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
                product.setpPhoto(fileName);
            }

            // Get the category by id
            CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
            Category category = cdao.getCategoryById(updated_pCategory);
            product.setCategory(category);

            // Update the product in the database
            pdao.updateProduct(product);

            HttpSession session = request.getSession();
            session.setAttribute("message", "Product updated successfully");

            return Response.ok().entity("Product Updated Successfully!").build();

        } catch (Exception e) {
            e.printStackTrace();
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while updating product").build();
        }
    }
}
