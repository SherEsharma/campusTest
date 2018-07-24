package com.abgroups.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.model.Objective;
import com.abgroups.service.ExamService;
import com.abgroups.utils.ConstantURL;

@Controller
public class ExamController {
	
	
	@Autowired
	ExamService exam;
	
	private Logger logger=Logger.getLogger(ExamController.class);
	
	@RequestMapping(value="startExam",method=RequestMethod.GET)
	public String showCommonExam(Model model){
		Objective objective = new Objective();
		List<Objective> list=exam.getAllQuestionResoning();
		logger.info("Show question   ::  "+ list.size());
		model.addAttribute("objective", objective);
		model.addAttribute("list", list);
		return ConstantURL.VIEW_COMMON_EXAM_URL;	
	}
	
	@RequestMapping(value="resultgenerate",method=RequestMethod.POST)
	public String resultgenerate(Model model, Objective objective){
		logger.info("After question submit"+objective);
		return ConstantURL.VIEW_EXAM_RESULT_URL;
	}
	

}
