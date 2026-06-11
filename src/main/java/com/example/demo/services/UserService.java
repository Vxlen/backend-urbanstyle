package com.example.demo.services;


import com.example.demo.model.UsuarioInput;
import com.example.demo.model.Usuarios;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService{


    @Autowired
    private UserRepository userRepository;


    @Override
    public Usuarios findUserByID(Long id) { return userRepository.getReferenceById(id);}

    @Override
    public List<Usuarios> findAllUsers() { return userRepository.findAll();}

    @Override
    public void createUser(Usuarios usuarios) { userRepository.save(usuarios);}

    @Override
    public void deleteUser(Long id) { userRepository.deleteById(id);}

    @Override
    public boolean login(String username, String password){

        Usuarios user = userRepository.findByUsername(username);

        if(user==null){return false;}

        return user.getPassword().equals(password);
    }
}
