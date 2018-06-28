package com.abgroups.serviceImpl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abgroups.controller.HomeController;
import com.abgroups.model.Candidate;
import com.abgroups.repository.RegistrationRepository;
import com.abgroups.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	RegistrationRepository repo;

	private Logger logger = Logger.getLogger(RegistrationServiceImpl.class);

	@Override
	public Candidate saveCandidateRegistration(Candidate candidate) {
		Candidate candidateSave = null;
		try {
			candidateSave = repo.save(candidate);
		} catch (Exception e) {
			logger.error("Data not save", e);
		}
		return candidateSave;
	}

	@Override
	public boolean isCandidateEmailUnique(Integer id, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Candidate findByCandidateEmailAndCandidatePassword(Candidate registration) {
		// TODO Auto-generated method stubr
		Candidate login=null;
		logger.info("check in method >>>>>>>>>"+registration.getEmail()+ registration.getPassword());
		try{
		 login = repo.findByEmailAndPassword(registration.getEmail(), registration.getPassword());
		logger.info("After login" + login);
		}
		catch (Exception e) {
			// TODO: handle exception
			logger.error("someThing error", e);
		}
		return login;
	}

}
