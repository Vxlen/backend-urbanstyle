package com.example.demo.services;

import com.example.demo.model.Product;

import java.util.List;

public interface IProductService {

    Product getProductByID(Long id);

    List<Product> getProductList();

    void createProduct(Product product);

    void actualizarProduct(Long id, Product product);

    void deleteProduct(Long id);
}
