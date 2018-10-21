/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.service;

import com.hnc.eduonline.model.Role;
import com.hnc.eduonline.repository.RoleRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NHUONGNM
 */
@Service("RoleService")
public class RoleService {

    @Autowired
    private RoleRepository repository;

    public void setRepository(RoleRepository repository) {
        this.repository = repository;
    }

    public List<Role> getAllRole() {
        return repository.getAllRole();
    }

    public List<Role> getRoleWithCondition(String condition) {
        return repository.getRoleWithCondition(condition);
    }

    public Role getRole(long id) {
        return repository.getRole(id);
    }

    public Role createRole(Role record) {
        return repository.createRole(record);
    }

    public Role editRole(Role record) {
        return repository.editRole(record);
    }

    public void deleteRole(Role record) {
        repository.deleteRole(record);
    }
}
