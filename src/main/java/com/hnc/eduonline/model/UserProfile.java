/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.security.core.GrantedAuthority;
/**
 *
 * @author Admin
 */
public class UserProfile implements Serializable{
    private Access_Token accesstoken;
    private User user;
    private List<String> role;
    private String shipping_service_url;
    public Access_Token getAccesstoken() {
        return accesstoken;
    }

    public void setAccesstoken(Access_Token accesstoken) {
        this.accesstoken = accesstoken;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<String> getRole() {
        return role;
    }

    public void setRole(List<String> role) {
        this.role = role;
    }

    public String getShipping_service_url() {
        return shipping_service_url;
    }

    public void setShipping_service_url(String shipping_service_url) {
        this.shipping_service_url = shipping_service_url;
    }
}
