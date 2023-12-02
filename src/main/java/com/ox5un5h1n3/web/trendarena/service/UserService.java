package com.ox5un5h1n3.web.trendarena.service;

import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class UserService {

    public User getByUserId(long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.createQuery("select u from User u where u.id=:id", User.class)
                .setParameter("id", id)
                .uniqueResult();
        session.close();
        return user;
    }

    public User getByEmail(String email){
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("select u from User u where u.email=:email", User.class)
                    .setParameter("email", email)
                    .uniqueResult();
        }catch (NoResultException ex){
            return null;
        }
    }

    public User getByUsernameAndPassword(String username, String password){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.createQuery("select u from User u where u.name=:username and u.password=:password", User.class)
                .setParameter("username", username)
                .setParameter("password", password)
                .uniqueResult();
        return user;
    }

    public User getByEmailAndPassword(String login_email, String login_password){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.createQuery("select u from User u where u.email=:email and u.password=:password", User.class)
                .setParameter("email", login_email)
                .setParameter("password", login_password)
                .uniqueResult();
        return user;
    }


    public List<User> getAllUsers(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            List<User> users = session.createQuery("select u from User u", User.class).getResultList();
            return users;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void saveUser(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(user);
        transaction.commit();
        session.close();
    }

    public void deleteUser(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.remove(user);
        transaction.commit();
        session.close();
    }

}
