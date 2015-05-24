/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.masud.blog.controller;

import java.util.Date;
import org.masud.blog.domain.Post;
import org.masud.blog.service.BlogPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * this controller class is for blog add / edit / read / delete
 *
 * @author Masudur Rahman <masud.java@gmail.com>
 */
@Controller
public class BlogPostController {

 
    /*
    * autowired blog post service 
    */
    @Autowired
    private BlogPostService blogPostService;

    
    /*
    *   this method is to get and display all blog post data
    *   @param Model mdoel
    */
    @RequestMapping(value = "/blog/list", method = RequestMethod.GET)
    public String postList(Model model) {
        model.addAttribute("blogposts", blogPostService.getList());
        return "blog/list";
    }
    
    /*
    *   this method is to  display blog post form
    *   @param Model mdoel
    */
    @RequestMapping(value = "/blog/add", method = RequestMethod.GET)
    public String addForm(Post post, Model model) {
        model.addAttribute("categories", blogPostService.getCategoryList());
        return "blog/add";
    }
    
      /*
    *   this method is to  save blog post from the displayed form
    *   @param Model mdoel
    */
    @RequestMapping(value = "/blog/add", method = RequestMethod.POST)
    public String addFormProcess(@ModelAttribute("post") Post post, Model model) {
        model.addAttribute("categories", blogPostService.getCategoryList());
        //set created date 
        post.setCreated(new Date());
        blogPostService.create(post);
        return "redirect:/blog/list";
    }
}
