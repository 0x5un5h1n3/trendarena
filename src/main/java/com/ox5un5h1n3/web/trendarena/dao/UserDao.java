package com.ox5un5h1n3.web.trendarena.dao;

import com.ox5un5h1n3.web.trendarena.entity.Product;
import com.ox5un5h1n3.web.trendarena.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserDao {

    private final SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }

    //getuser by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {

            String query = "from User where email=:e and password=:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            user = (User) q.uniqueResult();

            session.close();


        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;


    }

    public User getUserById(int userId){
        User user = null;
        try (Session session = factory.openSession()) {
            user = session.get(User.class, userId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public List<User> getAllUser() {
        try (Session session = this.factory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Query query = session.createQuery("FROM User");
            List<User> users = query.list();
            return users;
        }

    }

    public void saveUser(User user)
    {
        boolean f= false;

        try {

            Session session= this.factory.openSession();
            Transaction tx=session.beginTransaction();

            session.save(user);
            f=true;


            tx.commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
            f=false;
        }
    }

    public boolean updateUser(User user) {
        boolean b= false;
        Transaction tx = null;
        try (Session session = factory.openSession()) {
            tx = session.beginTransaction();
            session.update(user); // Update the user entity
            tx.commit();
            b=true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback(); // Rollback the transaction in case of an error
            }
            e.printStackTrace();
        }
        return b;
    }

    public boolean deleteUser(int uId){
        boolean b= false;
        Transaction tx= null;
        try (Session session = factory.openSession()) {
            tx = session.beginTransaction();
            User user = session.get(User.class, uId);
            session.delete(user); //deleting the user
            tx.commit();
            b=true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback(); // Rollback the transaction in case of an error
            }
            e.printStackTrace();
        }

        return b;
    }

}
