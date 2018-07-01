package com.abgroups.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.abgroups.model.Candidate;

public interface RegistrationRepository extends JpaRepository<Candidate, Integer> {
	
	Candidate findByEmailAndPassword(String candidateEmailId, String candidatePassword);
}
