package com.abgroups.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abgroups.model.Candidate;

public interface RegistrationRepository extends JpaRepository<Candidate, Integer> {

}
