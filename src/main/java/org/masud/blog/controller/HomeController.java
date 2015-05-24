/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.masud.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * This controller to display and process homepage of this blog in this
 * controller we will have all homepage related process methods.
 *
 * @author Masudur Rahman <masud.java@gmail.com>
 */
@Controller
public class HomeController {

    /*
     * This method is to display homepage of this blog
     * @param Model model
     * @return String view name blog/home
     */
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home(Model model) {
        return "blog/home";
    }

    /*
     * This method is to display login page of this blog
     * @return String view name login
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    /*
     * This method is to display login failed page of this blog
     * @return String view name loginfailed
     */
    @RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
    public String loginerror(Model model) {
        model.addAttribute("error", "true");
        return "login";
    }

    /*
     * This method is to logout page of this blog
     * @return String view name login
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model) {
        return "login";
    }

}
