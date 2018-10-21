/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.utils;

import com.hnc.eduonline.service.UserService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

/**
 *
 * @author nhuongnm
 */
public class AppAuthenticationProvider implements AuthenticationProvider {

    /**
     * UserService service bean
     */
    @Autowired
    UserService service;

    public void setService(UserService service) {
        this.service = service;
    }

    @Override
    public Authentication authenticate(Authentication auth) throws AuthenticationException {

        String userName = (String) auth.getPrincipal();
        String password = (String) auth.getCredentials();

        boolean userId = service.checkLogin(userName, password);
        if (userId && service.validateUserId(userName)) {

            List<String> userRoles = service.getUserRoles(userName);

            Collection<SimpleGrantedAuthority> authorties = fillUserAuthorities(userRoles);
            Authentication filledAuthentication = new UsernamePasswordAuthenticationToken(userName, password, authorties);
            service.UpdateLastLogin(userName);
            return filledAuthentication;
        } else {
            throw new BadCredentialsException("Invalid credentials");
        }
    }

    @Override
    public boolean supports(Class<?> type) {
        return true;
    }

    /**
     * utility method to convert the user roles to a
     * Collection<GrantedAuthority> for spring security to deal with
     *
     * @param roles the list of roles as string
     * @return a collection of SimpleGrantedAuthority that represent user roles
     */
    private Collection<SimpleGrantedAuthority> fillUserAuthorities(List<String> roles) {
        Collection<SimpleGrantedAuthority> authorties = new ArrayList<>();
        for (String role : roles) {
            authorties.add(new SimpleGrantedAuthority(role));
        }
        return authorties;
    }
}
