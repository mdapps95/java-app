package org.workshop.coffee.repository;

import org.workshop.coffee.domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.sql.DataSource;
import java.util.List;
import java.util.Locale;

@Repository
public class SearchRepository {

    @Autowired
    EntityManager em;

    @Autowired
    DataSource dataSource;

    public List<Product> searchProduct (String input) {

        //lowercase the input
        input = input.toLowerCase(Locale.ROOT);
        //create the select query with the input using product_name or description
        String query = "SELECT * FROM product WHERE LOWER(product_name) LIKE '%" + input + "%' OR LOWER(description) LIKE '%" + input + "%'";
        //execute the native query
        List<Product> products = em.createNativeQuery(query, Product.class).getResultList();
        //return the result
        return products;

    }


}
