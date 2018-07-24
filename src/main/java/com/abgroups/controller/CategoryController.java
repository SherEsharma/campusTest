package com.abgroups.controller;

import org.apache.log4j.Logger;
import org.apache.tomcat.util.bcel.classfile.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.model.Category;
import com.abgroups.service.CategoryService;
import com.abgroups.utils.ConstantMessage;
import com.abgroups.utils.ConstantURL;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	public static final String REDIRECT = "redirect:/";
	
	Logger logger = Logger.getLogger(CategoryController.class);
	
	
	@RequestMapping(value="viewcategory", method=RequestMethod.GET)
	public String showAddCategory(Model model ){
		Category category =new Category();
		logger.info("========================="+categoryService.findAllCategory());
		model.addAttribute("viewAllCategory", categoryService.findAllCategory());
		model.addAttribute("category", category);
		return ConstantURL.VIEW_CATEGORY_URL;
	}
	

	@RequestMapping(value="category", method=RequestMethod.GET)
	public String showAddCategory1(Model model ){
		Category category =new Category();
		logger.info("========================="+categoryService.findAllCategory());
		model.addAttribute("viewAllCategory", categoryService.findAllCategory());
		model.addAttribute("category", category);
		return ConstantURL.VIEW_CATEGORY_URL;
	}
	
	@RequestMapping(value="addcategory", method=RequestMethod.POST)
	public String processCategory(Model model, Category category){
		logger.info("showAddCategory() model "+model);
		
		Category savecategory=categoryService.AddCategory(category);
		if(savecategory!=null){
			model.addAttribute("viewAllCategory", categoryService.findAllCategory());
			//model.addAttribute("msg", ConstantMessage.CATEGORY_ADD_SUCCESS);
		}
		//model.addAttribute("msg", ConstantMessage.CATEGORY_ADD_UNSUCCESS);
		return REDIRECT+ConstantURL.VIEW_CATEGORY_URL;
	}
	
}
