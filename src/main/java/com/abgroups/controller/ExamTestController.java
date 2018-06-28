package com.abgroups.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.utils.ConstantURL;

@Controller
public class ExamTestController {
	
	@RequestMapping(value="startExam",method=RequestMethod.GET)
	public String showCommonExam(){
		return ConstantURL.VIEW_COMMON_EXAM_URL;	
	}
	

}
