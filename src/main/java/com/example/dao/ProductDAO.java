package com.example.dao;

import com.example.database.DatabaseManager;
import com.example.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM products";
        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                Product product = new Product();
                product.setProductId(resultSet.getInt("productid"));
                product.setProductName(resultSet.getString("productname"));
                product.setCategoryId(resultSet.getInt("categoryid"));
                product.setPrice(resultSet.getInt("price"));
                product.setStock(resultSet.getInt("stock"));
                product.setImgUrl(resultSet.getString("img_url"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}


