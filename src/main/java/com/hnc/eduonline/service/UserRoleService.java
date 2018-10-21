/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.service;

import com.hnc.eduonline.model.UserRole;
import com.hnc.eduonline.repository.UserRoleRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NHUONGNM
 */
@Service("UserRoleService")
public class UserRoleService {

    @Autowired
    private UserRoleRepository repository;

    public void setRepository(UserRoleRepository repository) {
        this.repository = repository;
    }

    public List<UserRole> getAllUserRole() {
        return repository.getAllUserRole();
    }

    public List<UserRole> getUserRoleWithCondition(String condition) {
        return repository.getUserRoleWithCondition(condition);
    }

    public UserRole getUserRole(long userid, long roleid) {
        return repository.getUserRole(userid, roleid);
    }

    public UserRole createUserRole(UserRole record) {        
        return repository.createUserRole(record);
    }

    public UserRole editUserRole(UserRole record) {
        return repository.editUserRole(record);
    }

    public void deleteUserRole(UserRole record) {
        repository.deleteUserRole(record);
    }
}
