package com.example.demo.controller;


import com.example.demo.model.UsuarioInput;
import com.example.demo.model.Usuarios;
import com.example.demo.repository.UserRepository;
import com.example.demo.services.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @QueryMapping
    public Usuarios findUserByID(@Argument(name = "userID") String id){
        Long userID = Long.parseLong(id);

        return userService.findUserByID(userID);}

    @QueryMapping
    public List<Usuarios> findAllUsers(){
        return userService.findAllUsers();}

    @MutationMapping
    public Usuarios createUser(@Argument UsuarioInput userInput){
        Usuarios newUser = new Usuarios();

        newUser.setUsername(userInput.getUsername());
        newUser.setPassword(userInput.getPassword());
        newUser.setRol("usuario");

        userService.createUser(newUser);

        return newUser;}

    @MutationMapping
    public String deleteUser(@Argument(name = "userID") String id){
        Long userID = Long.parseLong(id);

        userService.deleteUser(userID);

        return "El usuario "+ id + "ha sido eliminado";}


    @MutationMapping
    public boolean login(@Argument UsuarioInput userInput){

       return userService.login(userInput.getUsername(), userInput.getPassword());}
}
