package com.abgroups.service;

import java.util.List;

import com.abgroups.model.Category;

public interface CategoryService {
	public Category AddCategory(Category category);
	public List <Category> findAllCategory();
	public Long countAllCategory();
}
