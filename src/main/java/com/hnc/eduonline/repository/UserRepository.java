/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.repository;

import com.hnc.eduonline.model.User;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nhuongnm
 */
@Repository("UserRepository")
@Transactional
public class UserRepository {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
     public User getUser(long id) {
        return (User) sessionFactory.getCurrentSession().get(User.class, id);
    }

    public User getUserByusername(String username) {
        String str = " username ='" + username + "'";
        List<User> lst = getUserWithCondition(str);
        if (lst.size() > 0) {
            return lst.get(0);
        }
        return null;
    }
    public List<User> getAllUsers() {
        List<User> listUser = null;
        listUser = sessionFactory.getCurrentSession()
                .createQuery("FROM User u")
                .list();

        return listUser;
    }
    
     public List<User> getUserWithCondition(String condition) {
        List<User> returnList = new ArrayList();
        returnList = sessionFactory.getCurrentSession()
                .createQuery("FROM User g where " + condition)
                .list();

        return returnList;
    }
     public User createUser(User record) {
        sessionFactory.getCurrentSession().save(record);
        return record;
    }

    public User editUser(User record) {
        sessionFactory.getCurrentSession().update(record);
        return record;
    }

    public void deleteUser(User record) {
        sessionFactory.getCurrentSession().delete(record);
    }

    private User getUserByusernameandPassword(String username, String password) {
        String str = " username ='" + username.trim() + "'" + " and password='" + password + "'";
        List<User> lst = getUserWithCondition(str);
        if (lst.size() > 0) {
            return lst.get(0);
        }
        return null;
    }

    public boolean checkLogin(String username, String password) {
        User user = getUserByusernameandPassword(username, password);
        return (user != null);
    }
    public List<String> getUserRoles(String userid) {
        StringBuilder st = new StringBuilder();
        st.append("SELECT r.name as name from tbl_role r inner join ");
        st.append("\\(");
        st.append("SELECT ur.roleid FROM tbl_user_role ur inner join ");
        st.append("\\(");
        st.append("SELECT u.id FROM tbl_user u where username = '");
        st.append(userid);
        st.append("'");
        st.append(") a on ur.userid = a.id");
        st.append("\\) b ");
        st.append("on r.id = b.roleid");

        List<String> returnList = new ArrayList();
        returnList = sessionFactory.getCurrentSession().createSQLQuery(st.toString())
                .addScalar("name", StandardBasicTypes.STRING)
                //.setResultTransformer(Transformers.aliasToBean(String.class))
                .list();

        return returnList;
    }
    
    public void UpdateLastLogin(String username, Date date) {        
        Query queryCriteria = sessionFactory.getCurrentSession().createQuery("update User u set lastLogin = '" + date.getTime() + "' where username = '" + username + "'");
        queryCriteria.executeUpdate();
    }
}
