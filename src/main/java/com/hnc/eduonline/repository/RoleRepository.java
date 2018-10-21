/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.repository;

import com.hnc.eduonline.model.Role;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author NHUONGNM
 */
@Repository("RoleRepository")
@Transactional
public class RoleRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Role getRole(long id) {
        return (Role) sessionFactory.getCurrentSession().get(Role.class, id);
    }

    public List<Role> getAllRole() {
        List<Role> returnList = new ArrayList();
        returnList = sessionFactory.getCurrentSession()
                .createQuery("FROM Role g")
                .list();
        return returnList;
    }

    public List<Role> getRoleWithCondition(String condition) {
        List<Role> returnList = new ArrayList();
        returnList = sessionFactory.getCurrentSession()
                .createQuery("FROM Role g where " + condition)
                .list();

        return returnList;
    }

    public Role createRole(Role record) {
        sessionFactory.getCurrentSession().save(record);
        return record;
    }

    public Role editRole(Role record) {
        sessionFactory.getCurrentSession().update(record);
        return record;
    }

    public void deleteRole(Role record) {
        sessionFactory.getCurrentSession().delete(record);
    }
}
