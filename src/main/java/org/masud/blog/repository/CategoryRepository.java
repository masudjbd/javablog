/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.masud.blog.repository;

import java.util.List;
import org.hibernate.SessionFactory;
import org.masud.blog.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * This class is category dao all category related dao will be done by this
 * class
 *
 * @author Masudur Rahman <masud.java@gmail.com>
 */
@Repository
@Transactional
public class CategoryRepository {

    @Autowired
    private SessionFactory sf;

    public void create(Category cat) {
        sf.getCurrentSession().persist(cat);
    }

    @SuppressWarnings("unused")
    public List<Category> getList() {
        return (List<Category>) sf.getCurrentSession().createCriteria(Category.class).list();
    }

}
