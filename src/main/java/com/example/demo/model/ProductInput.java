package com.example.demo.model;


import lombok.Data;

@Data
public class ProductInput {

    private String nombre;

    private String descripcion;

    private float precio;

    private int stock;

    private String categoriaID;
}
