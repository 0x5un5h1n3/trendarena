package com.ox5un5h1n3.web.trendarena.dao;

import com.ox5un5h1n3.web.trendarena.entity.Cart;
import com.ox5un5h1n3.web.trendarena.entity.CartItem;
import com.ox5un5h1n3.web.trendarena.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class CartDao {
    private SessionFactory sessionFactory;

    public CartDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveCartItem(CartItem cartItem, User user) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();

        cartItem.setUser(user);
        session.save(cartItem);
        transaction.commit();
        session.close();
    }

    public List<CartItem> getCartItemsByUser(User user) {
        Session session = sessionFactory.openSession();
        List<CartItem> cartItems = session.createQuery("FROM CartItem WHERE user = :user", CartItem.class)
                .setParameter("user", user)
                .getResultList();
        session.close();
        return cartItems;
    }
}