package com.abgroups.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.model.Objective;
import com.abgroups.service.ExamService;
import com.abgroups.utils.ConstantURL;

@Controller
public class ExamController {
	
	
	@Autowired
	private ExamService exam;
	
	@RequestMapping(value="startExam",method=RequestMethod.GET)
	public String showCommonExam(){
		List<Objective> list=exam.getAllQuestionResoning();
		System.out.println(list);
		return ConstantURL.VIEW_COMMON_EXAM_URL;	
	}
	

}
