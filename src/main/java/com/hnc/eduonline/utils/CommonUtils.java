/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.utils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

/**
 *
 * @author nhuongnm
 */
public class CommonUtils {
    public static String getCurrentUser() {
        try {
            Authentication a = SecurityContextHolder.getContext().getAuthentication();
            User user = (User) a.getPrincipal();
            return user.getUsername();
        } catch (Exception ex) {
            Authentication a = SecurityContextHolder.getContext().getAuthentication();
            return (String) a.getPrincipal();
        }
    }
}
