package com.example.demo.controller;


import com.example.demo.model.Categoria;
import com.example.demo.model.Product;
import com.example.demo.model.ProductInput;
import com.example.demo.services.CategoriaService;
import com.example.demo.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;


@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoriaService categoriaService;

    // Queries
    @QueryMapping
    public Product findProductByID(@Argument(name="productID") String id){

        Long productID = Long.parseLong(id);

        return productService.getProductByID(productID);}

    @QueryMapping
    public List<Product> findAllProducts(){
        return productService.getProductList();
    }

    //Mutations
    @MutationMapping
    public Product createProduct(@Argument ProductInput productInput){

        Long catID = Long.parseLong(productInput.getCategoriaID());
        Categoria cat = categoriaService.getCategoriaByID(catID);

        Product newProduct = new Product();
        newProduct.setNombre(productInput.getNombre());
        newProduct.setDescripcion(productInput.getDescripcion());
        newProduct.setPrecio(productInput.getPrecio());
        newProduct.setStock(productInput.getStock());
        newProduct.setCategoria(cat);


        productService.createProduct(newProduct);

        return newProduct;}

    @MutationMapping
    public String deleteProductByID(@Argument(name = "productID") String id){

        productService.deleteProduct(Long.parseLong(id));
        return "El producto ha sido eliminado";}

    @MutationMapping
    public String modificarProducto(@Argument(name = "productID") String id, @Argument ProductInput productInput){
        Long productID = Long.parseLong(id);
        Long catID = Long.parseLong(productInput.getCategoriaID());
        Categoria cat = categoriaService.getCategoriaByID(catID);

        Product newProduct = new Product();
        newProduct.setNombre(productInput.getNombre());
        newProduct.setDescripcion(productInput.getDescripcion());
        newProduct.setPrecio(productInput.getPrecio());
        newProduct.setStock(productInput.getStock());
        newProduct.setCategoria(cat);

        productService.actualizarProduct(productID, newProduct);

        return "El producto ha sido actualizado correctamente";}

}
