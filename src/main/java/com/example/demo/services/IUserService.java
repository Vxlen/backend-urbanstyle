package com.example.demo.services;

import com.example.demo.model.Usuarios;

import java.util.List;

public interface IUserService {

    Usuarios findUserByID(Long id);

    List<Usuarios> findAllUsers();

    void createUser(Usuarios usuarios);

    void deleteUser(Long id);

    boolean login(String username, String password);
}

