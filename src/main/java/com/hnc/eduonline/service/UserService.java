/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.service;

import com.hnc.eduonline.model.User;
import com.hnc.eduonline.repository.UserRepository;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nhuongnm
 */
@Service("UserService")
public class UserService {
    @Autowired
    private UserRepository repository;

    public void setRepository(UserRepository repository) {
        this.repository = repository;
    }
     public List<User> getAllUser() {
        return repository.getAllUsers();
    }

    public List<User> getUserWithCondition(String condition) {
        return repository.getUserWithCondition(condition);
    }

    public User getUser(long id) {
        return repository.getUser(id);
    }

    public User getUserByusername(String username) {
        return repository.getUserByusername(username);
    }

    public User createUser(User record) {
        return repository.createUser(record);
    }

    public User editUser(User record) {
        return repository.editUser(record);
    }

    public void deleteUser(User record) {
        repository.deleteUser(record);
    }

    public boolean checkLogin(String username, String password) {
        return repository.checkLogin(username, password);
    }

    public boolean validateUserId(String userid) {
        User user = getUserByusername(userid);
        return (user != null);
    }
    public List<String> getUserRoles(String userid) {
        return repository.getUserRoles(userid);
    }
    
    public void UpdateLastLogin(String userid)
    {
        Date date = new Date();
        repository.UpdateLastLogin(userid, date);
    }
}
