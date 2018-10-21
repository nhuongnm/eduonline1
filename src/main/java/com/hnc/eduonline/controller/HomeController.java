/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.controller;
import com.hnc.eduonline.model.User;
import com.hnc.eduonline.model.UserProfile;
//import com.hnc.eduonline.model.utils.HttpClientRequest;
import com.google.gson.Gson;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping(value = {"/", ""})
public class HomeController {
    @RequestMapping(value = {"index", "index/"}, method = RequestMethod.GET)
    public String index(Model model) {
        try {
            UserProfile userProfile = (UserProfile) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            model.addAttribute("userProfile", userProfile);
        } catch (Exception ex) {
            return "redirect:/login";
        }
//        String gmap_api_key = getGmapApiKey();
//        model.addAttribute("gmap_api_key", gmap_api_key);
        return "home-home";

    }
    
    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public String indexhome(Model model) {        
          //  return "redirect:/login";
        
//        String gmap_api_key = getGmapApiKey();
//        model.addAttribute("gmap_api_key", gmap_api_key);
        return "home-index";

    }

    @RequestMapping(value = {"login", "login/"}, method = RequestMethod.GET)
    public String login() {
        return "login-index";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String getLogoutPage() {
        SecurityContextHolder.clearContext();
        return "redirect:/login";
    }
/*
    private String getGmapApiKey() {
        HttpClientRequest request = new HttpClientRequest();
        request.setUrl("api/getgmapikey");
        try {
            request.sendGet();
        } catch (Exception ex) {
        }

        String str = request.getResponse();
        if (str != null) {
            String record = new Gson().fromJson(str, String.class);
            return record;
        }
        return "";
    }
*/
}
