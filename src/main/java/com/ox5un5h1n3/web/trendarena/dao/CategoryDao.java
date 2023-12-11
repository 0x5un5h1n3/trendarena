package com.ox5un5h1n3.web.trendarena.dao;

import com.ox5un5h1n3.web.trendarena.entity.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;


public class CategoryDao {

    private final SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }

    // save category to db
    public int saveCategory(Category cat) {
        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
        int catId = (Integer) session.save(cat);
        tx.commit();
        session.close();
        return catId;
    }

    public List<Category> getCategories() {
        Session s = this.factory.openSession();
        Query<Category> query = s.createQuery("from Category");
        List<Category> list = query.list();
        return list;
    }

    public Category getCategoryById(int cid) {
        Category cat = null;
        try {
            Session session = this.factory.openSession();
            cat = session.get(Category.class, cid);
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cat;
    }

//    public void deleteCategory(int catId){
//        boolean b= false;
//        Transaction tx= null;
//        try (Session session = factory.openSession()) {
//            tx = session.beginTransaction();
//            Category cat = session.get(Category.class, catId);
//            session.delete(cat); //deleting the user
//            tx.commit();
//            b=true;
//        } catch (Exception e) {
//            if (tx != null) {
//                tx.rollback(); // Rollback the transaction in case of an error
//            }
//            e.printStackTrace();
//        }
//
//    }

//    public void deleteCategory(int catId) {
//        boolean b = false;
//        Transaction tx = null;
//        try (Session session = factory.openSession()) {
//            tx = session.beginTransaction();
//
//            // Check if the category exists
//            Category cat = session.get(Category.class, catId);
//            if (cat != null) {
//                // Delete the corresponding products first
//                Query query = session.createQuery("DELETE FROM Product WHERE category.categoryId = :catId");
//                query.setParameter("catId", catId);
//                query.executeUpdate();
//
//                // Delete the category
//                session.delete(cat);
//                tx.commit();
//                b = true;
//            }
//        } catch (Exception e) {
//            if (tx != null) {
//                tx.rollback(); // Rollback the transaction in case of an error
//            }
//            e.printStackTrace();
//        }
//    }

    public void deleteCategory(int catId) {
        boolean b = false;
        Transaction tx = null;
        try (Session session = factory.openSession()) {
            tx = session.beginTransaction();

// Check if the category exists
            Category cat = session.get(Category.class, catId);
            if (cat != null) {
                // Check if there are corresponding products
                Query query = session.createQuery("SELECT COUNT(*) FROM Product WHERE category.categoryId = :catId");
                query.setParameter("catId", catId);
                Long count = (Long) query.getSingleResult();
                if (count == 0) {
                    // Delete the category if there are no corresponding products
                    session.delete(cat);
                    tx.commit();
                    b = true;
                }
            }
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                // Rollback the transaction in case of an error
            }
            e.printStackTrace();
        }
    }
}
