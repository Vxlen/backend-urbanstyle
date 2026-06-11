package com.example.demo.services;

import com.example.demo.model.Categoria;

import java.util.List;

public interface ICategoriaService {

    Categoria getCategoriaByID(Long id);

    List<Categoria> getAllCategorias();

    Categoria createCategory(Categoria categoria);

}
