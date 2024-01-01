//package com.ox5un5h1n3.web.trendarena.dao;
//
//
//import com.ox5un5h1n3.web.trendarena.entity.Product;
//import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
//import jakarta.persistence.NoResultException;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.query.Query;
//
//import java.util.List;
//
//
//public class CartDao {
//
//    private final SessionFactory factory;
//
//    public CartDao(SessionFactory factory) {
//        this.factory = factory;
//    }
//
//
//
//    public boolean saveProduct(Product product)
//    {
//        boolean f=false;
//
//        try {
//
//            Session session= this.factory.openSession();
//            Transaction tx=session.beginTransaction();
//
//            session.save(product);
//            f=true;
//
//
//            tx.commit();
//            session.close();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//            f=false;
//        }
//        return f;
//    }
//
//
//    //get all products
//
//
//    public List<Product> getAllProducts()
//    {
//        Session s=	this.factory.openSession();
//        Query query =s.createQuery("from Product");
//        List<Product> list=query.list();
//        return  list;
//
//    }
//
//    //get all products of given category
////    public List<Product> getAllProductsById(int cid)
////    {
////        Session s=	this.factory.openSession();
////        Query query =s.createQuery("from Product as p where p.category.categoryId=:id");
////        query.setParameter("id", cid);
////        List<Product> list=query.list();
////        return  list;
////
////    }
//
//    public Product getProductById(int pid){
//        Product product = null;
//        try (Session session = this.factory.openSession()) {
//            product = session.get(Product.class, pid);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return product;
//    }
//
//    //get all products of given category
//    public List<Product> getAllProductsById(int cid)
//    {
//        Session s=	this.factory.openSession();
//        Query query =s.createQuery("from Product as p where p.category.categoryId=:id");
//        query.setParameter("id", cid);
//        List<Product> list=query.list();
//        return  list;
//
//    }
//
//    public void updateProduct(Product product) {
//        boolean b = false;
//        Transaction tx = null;
//        try (Session session = factory.openSession()) {
//            tx = session.beginTransaction();
//            session.update(product);
//            tx.commit();
//            b = true;
//        } catch (Exception e) {
//            if (tx != null) {
//                tx.rollback();
//            }
//            e.printStackTrace();
//        }
//    }
//
//    public boolean deleteProduct(int pId){
//        boolean b= false;
//        Transaction tx= null;
//        try (Session session = factory.openSession()) {
//            tx = session.beginTransaction();
//            Product product = session.get(Product.class, pId);
//            session.delete(product); //deleting the user
//            tx.commit();
//            b=true;
//        } catch (Exception e) {
//            if (tx != null) {
//                tx.rollback(); // Rollback the transaction in case of an error
//            }
//            e.printStackTrace();
//        }
//
//        return b;
//    }
//
//
//    public List<Product> searchByTitle(String title) {
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        try {
//            List<Product> products = session.createQuery("SELECT p FROM Product p WHERE p.pName LIKE :product",Product.class)
//                    .setParameter("product", "%"+title+"%").getResultList();
//            return products;
//        } catch (NoResultException e) {
//            return null;
//        } finally {
//            session.close();
//        }
//    }
//
//
//
//
//}
//
