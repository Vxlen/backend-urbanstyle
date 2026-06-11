package com.example.demo.controller;


import com.example.demo.model.Categoria;
import com.example.demo.model.CategoryInput;
import com.example.demo.services.CategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;


import java.util.List;


@Controller
public class CategoriaController {

    @Autowired
    private CategoriaService categoriaService;

    // Queries - Consultas
    @QueryMapping
    public List<Categoria> findAllCategories(){

        return categoriaService.getAllCategorias();}

    @QueryMapping
    public Categoria findCategoryByID(@Argument(name = "categoryID") String id){
        return categoriaService.getCategoriaByID(Long.parseLong(id));}

    // Mutations - Mutaciones
    @MutationMapping
    public Categoria createCategory(@Argument CategoryInput categoryInput){
        Categoria newCategory = new Categoria();
        newCategory.setNombre(categoryInput.getNombre());
        return categoriaService.createCategory(newCategory);}


}
