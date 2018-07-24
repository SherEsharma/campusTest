package com.abgroups.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abgroups.model.Admin;
import com.abgroups.model.Candidate;

public interface AdminRepository extends JpaRepository<Admin, Integer>
{
	Admin findByEmailAndPassword(String adminEmailId, String adminPassword);
}
