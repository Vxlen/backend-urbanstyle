package com.example.demo.services;

import com.example.demo.model.Categoria;
import com.example.demo.repository.CategoriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriaService implements ICategoriaService{

    @Autowired
    private CategoriaRepository categoriaRepository;

    @Override
    public Categoria getCategoriaByID(Long id) {
        return categoriaRepository.getReferenceById(id);}

    @Override
    public List<Categoria> getAllCategorias() {
        return categoriaRepository.findAll();}

    @Override
    public Categoria createCategory(Categoria categoria){
        return categoriaRepository.save(categoria);}

}
