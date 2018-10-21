/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.repository;

import com.hnc.eduonline.model.UserRole;
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
 * @author NHUONGNM
 */
@Repository("UserRoleRepository")
@Transactional
public class UserRoleRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public UserRole getUserRole(long userid, long roleid) {
        List<UserRole> lst
                = getUserRoleWithCondition(" userid=" + userid + " and roleid =" + roleid);
        if (lst.size() > 0) {
            return lst.get(0);
        }
        return null;
    }

    public List<UserRole> getAllUserRole() {
        List<UserRole> returnList = new ArrayList();
        returnList = sessionFactory.getCurrentSession()
                .createQuery("FROM UserRole g")
                .list();
        return returnList;
    }

    public List<UserRole> getUserRoleWithCondition(String condition) {
        List<UserRole> returnList = new ArrayList();
        returnList = sessionFactory.getCurrentSession()
                .createQuery("FROM UserRole g where " + condition)
                .list();

        return returnList;
    }

    public UserRole createUserRole(UserRole record) {
        sessionFactory.getCurrentSession().save(record);
        return record;
    }

    public UserRole editUserRole(UserRole record) {
        sessionFactory.getCurrentSession().update(record);
        return record;
    }

    public void deleteUserRole(UserRole record) {
        sessionFactory.getCurrentSession().delete(record);
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
