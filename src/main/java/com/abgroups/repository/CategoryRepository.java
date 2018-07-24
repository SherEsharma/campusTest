package com.abgroups.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abgroups.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
