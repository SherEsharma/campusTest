package com.abgroups.serviceImpl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abgroups.controller.HomeController;
import com.abgroups.model.Candidate;
import com.abgroups.repository.RegistrationRepository;
import com.abgroups.service.RegistrationService;
@Service
public class RegistrationServiceImpl implements RegistrationService{

	@Autowired
	RegistrationRepository repo;
	
	private Logger logger= Logger.getLogger(RegistrationServiceImpl.class);
	
	
	@Override
	public Candidate saveCandidateRegistration(Candidate candidate) {
		Candidate candidateSave=null;
		try{
		 candidateSave=repo.save(candidate);
		}catch (Exception e) {
			logger.error("Data not save", e);
		}
		return candidateSave;
	}


	@Override
	public boolean isCandidateEmailUnique(Integer id, String email) {
		// TODO Auto-generated method stub
		return false;
	}

}
