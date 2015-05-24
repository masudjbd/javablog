/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.masud.blog.controller;

import org.masud.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * this controller class is for category add / edit / read / delete
 *
 * @author Masudur Rahman <masud.java@gmail.com>
 */
@Controller
public class CategoryController {

    /*
    * autowired category service 
    */
    @Autowired
    private CategoryService categoryService;

    /*
    *   this method is to get and display all category data
    *   @param Model mdoel
    */
    @RequestMapping(value = "/category/list", method = RequestMethod.GET)
    public String catList(Model model) {
        model.addAttribute("categories", categoryService.getList());
        return "category/list";
    }
}
