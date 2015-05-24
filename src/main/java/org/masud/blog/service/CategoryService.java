/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.masud.blog.service;

import java.util.List;
import org.masud.blog.domain.Category;
import org.masud.blog.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * this class is for category service
 *
 * @author Masudur Rahman <masud.java@gmail.com>
 */
@Service
@Transactional
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public void create(Category cat) {
        categoryRepository.create(cat);
    }

    public List<Category> getList() {
        return categoryRepository.getList();
    }

}
