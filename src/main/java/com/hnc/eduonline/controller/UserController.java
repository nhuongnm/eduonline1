/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.controller;

import com.hnc.eduonline.service.UserService;
import java.util.List;
import com.hnc.eduonline.model.User;
import com.hnc.eduonline.utils.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author nhuongnm
 */
@RequestMapping(value = {"api/user", "api/user/"})
public class UserController {
    @Autowired
    private UserService service;

    public void setService(UserService service) {
        this.service = service;
    }
    
    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public String index() {
        return "user";
    }

    @RequestMapping(value = {"/list", "/list/"}, method = RequestMethod.GET)
    public List<User> getAllUser() {
        return service.getAllUser();
    }

    @RequestMapping(value = {"/view/{id}", "/view/{id}/"}, method = RequestMethod.GET)
    public User getUser(@PathVariable long id) {
        return service.getUser(id);
    }

    @RequestMapping(value = {"/get/profile", "/get/profile/"}, method = RequestMethod.GET)
    public User getUserProfile() {
        return service.getUserByusername(CommonUtils.getCurrentUser());
    }

    @RequestMapping(value = {"/create", "/create/"}, method = RequestMethod.POST, consumes = "application/json")
    public User createUser(@RequestBody User record) {
        return service.createUser(record);
    }

    @RequestMapping(value = {"/update", "/update/"}, method = RequestMethod.POST, consumes = "application/json")
    public User editUser(@RequestBody User record) {
        return service.editUser(record);
    }
    
}
