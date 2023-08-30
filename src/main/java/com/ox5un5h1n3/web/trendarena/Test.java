package com.ox5un5h1n3.web.trendarena;

import com.ox5un5h1n3.web.trendarena.util.Encryption;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;

public class Test {
    public static void main(String[] args) {
//        HibernateUtil.getSessionFactory();
        String encrypt = Encryption.encrypt("1234");
        System.out.println(encrypt);
    }
}
