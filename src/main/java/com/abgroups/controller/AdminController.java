package com.abgroups.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.model.Admin;
import com.abgroups.service.AdminService;
import com.abgroups.service.CategoryService;
import com.abgroups.utils.ConstantURL;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CategoryService categoryService;
	
	private Logger logger= Logger.getLogger(AdminController.class);
	public static final String REDIRECT = "redirect:/";

	
	@RequestMapping(value={"adminlogin","access"}, method=RequestMethod.GET)
	public String showAdminLogin(Model model){
		Admin admin = new Admin();
	
		model.addAttribute("admin", admin);
		return ConstantURL.VIEW_ADMIN_LOGIN_URL;	
	}
	
	@RequestMapping(value="dashboard", method=RequestMethod.GET)
	public String showAdminDashBoard(){
		
		
		return ConstantURL.VIEW_ADMIN_DASHBOARD;	
	}
	
	
	@RequestMapping(value="adminlogin", method=RequestMethod.POST)
	public String processAdminLogin(Model model, Admin admin,HttpServletRequest request){
		HttpSession session = request.getSession();
		logger.info("processAdminLogin()>>>"+admin);
		Admin loginResult=adminService.adminLogin(admin);
		logger.info("After login "+loginResult);
		if(loginResult!=null){
			
			model.addAttribute("categoryCount", categoryService.countAllCategory());
			logger.info("--------------------------------"+categoryService.countAllCategory());
			session.setAttribute(ConstantURL.Admin_SESSION, loginResult);
			session.setAttribute("displaycategorycount", categoryService.countAllCategory());
			return REDIRECT+ ConstantURL.VIEW_ADMIN_DASHBOARD;
		}
		
		return ConstantURL.VIEW_ADMIN_LOGIN_URL;
	}
	
	
}
