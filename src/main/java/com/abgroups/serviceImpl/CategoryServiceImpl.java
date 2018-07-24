package com.abgroups.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abgroups.model.Category;
import com.abgroups.repository.CategoryRepository;
import com.abgroups.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryRepository categoryrepo;
	@Override
	public Category AddCategory(Category category) {
		Category categoryreusult=null;
		try{
			category.setIsActiveCategory(0);
			category.setIsDeleteCategory(0);
			categoryreusult=categoryrepo.save(category);
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return categoryreusult;
	}
	@Override
	public List<Category> findAllCategory() {
		// TODO Auto-generated method stub
		return categoryrepo.findAll();
	}
	@Override
	public Long countAllCategory() {
		// TODO Auto-generated method stub
		return categoryrepo.count();
	}

}
