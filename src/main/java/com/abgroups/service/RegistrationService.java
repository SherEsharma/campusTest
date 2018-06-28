package com.abgroups.service;

import com.abgroups.model.Candidate;

public interface RegistrationService {

	public boolean isCandidateEmailUnique(Integer id, String email);

	public Candidate saveCandidateRegistration(Candidate candidate);
	
	Candidate findByCandidateEmailAndCandidatePassword(Candidate registration);

}
