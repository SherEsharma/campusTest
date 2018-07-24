package com.abgroups.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.utils.ConstantURL;

@Controller
public class QuestionController {

	Logger logger= Logger.getLogger(QuestionController.class);
	
	@RequestMapping(value="addQuestion",method=RequestMethod.GET)
	public String addQuestion(){
		
		return ConstantURL.ADD_QUESTION_URL;
	}
}
