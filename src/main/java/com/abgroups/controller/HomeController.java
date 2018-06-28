package com.abgroups.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abgroups.model.Candidate;
import com.abgroups.service.RegistrationService;
import com.abgroups.utils.ConstantMessage;
import com.abgroups.utils.ConstantURL;
import com.abgroups.utils.IConstant;


@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired 
	RegistrationService service;
	
	private Logger logger= Logger.getLogger(HomeController.class);
	public static final String REDIRECT = "redirect:/";

	
	@RequestMapping(value={"/","registration"}, method=RequestMethod.GET)
	public String showRegistration(Model model){
		Candidate candidate = new Candidate();
		model.addAttribute("candidate",candidate );
		return ConstantURL.VIEW_REGISTRATION_URL;	
	}

	
	@RequestMapping(value="instructions", method=RequestMethod.GET)
	public String showinstructions(){
	
		return ConstantURL.VIEW_INSTRUCTION_URL;	
	}

	

	@RequestMapping(value = "RegistrationProcess", method = RequestMethod.POST)
	public String registrationProcess(@ModelAttribute("candidate") Candidate candidate, Model model, HttpServletRequest request) {
		HttpSession session =request.getSession();
		
		Candidate candidateResult=service.saveCandidateRegistration(candidate);
		if(candidateResult!=null){
			session.setAttribute(ConstantURL.CANDIDATE_EMAIL_SESSION, candidateResult.getEmail());
			session.setAttribute(ConstantURL.CANDIDATE_NAME_SESSION, candidateResult.getCandidateName());
			return REDIRECT+ ConstantURL.VIEW_INSTRUCTION_URL;	
		}
		return ConstantURL.VIEW_REGISTRATION_URL;
	}
	
	@RequestMapping(value="candidateLogin",method=RequestMethod.GET)
	public String showLogin(Model model){
		Candidate candidate = new Candidate();
		model.addAttribute("candidate", candidate);
		return ConstantURL.VIEW_LOGIN_URL;
	}
	
	
	@RequestMapping(value = "candidateLogin", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("candidate") Candidate candidate, Model model, HttpServletRequest request) {
		HttpSession session =request.getSession();
		
		Candidate candidateResult=service.findByCandidateEmailAndCandidatePassword(candidate);
		logger.info("candidateLogin >>>>>>"+candidateResult);
		if(candidateResult!=null){
			session.setAttribute(ConstantURL.CANDIDATE_EMAIL_SESSION, candidateResult.getEmail());
			session.setAttribute(ConstantURL.CANDIDATE_NAME_SESSION, candidateResult.getCandidateName());
			return REDIRECT+ ConstantURL.VIEW_INSTRUCTION_URL;	
		}
		session.setAttribute("errmessage", ConstantMessage.CANDIDATE_LOGIN_FAIL);
		return ConstantURL.VIEW_LOGIN_URL;
	}
}
