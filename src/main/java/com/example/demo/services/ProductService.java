package com.example.demo.services;


import com.example.demo.model.Product;
import com.example.demo.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements IProductService {


    @Autowired
    private ProductRepository productRepository;


    //Traer producto por su ID
    @Override
    public Product getProductByID(Long id) {
        return productRepository.getReferenceById(id);}


    //Traer todos los productos
    @Override
    public List<Product> getProductList() {
        return productRepository.findAll();}


    //Crear un producto
    @Override
    public void createProduct(Product product) {

        productRepository.save(product);}

    //Actualizar producto
    @Override
    public void actualizarProduct(Long id, Product product) {
        Product prod = productRepository.getReferenceById(id);

        prod.setNombre(product.getNombre());
        prod.setDescripcion(product.getDescripcion());
        prod.setPrecio(product.getPrecio());
        prod.setStock(product.getStock());
        prod.setCategoria(product.getCategoria());

        productRepository.save(prod);
    }


    //Eliminar producto
    @Override
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);}

}
