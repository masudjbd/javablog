/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.masud.blog.service;

import java.util.List;
import org.masud.blog.domain.Category;
import org.masud.blog.domain.Post;
import org.masud.blog.repository.BlogPostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * this class is for blogpost service
 *
 * @author Masudur Rahman <masud.java@gmail.com>
 */
@Service
@Transactional
public class BlogPostService {

    @Autowired
    private BlogPostRepository blogPostRepository;

    public void create(Post post) {
        blogPostRepository.create(post);
    }

    public List<Post> getList() {
        return blogPostRepository.getList();
    }

    public List<Category> getCategoryList() {
        return (List<Category>)blogPostRepository.getCategoryList();
    }

}
