package com.abgroups.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name="candidate")

public class Candidate implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "candidate_id")
	private Integer candidateId;
	
	@Column(name="candidate_name")
	private String candidateName;
	
	@Column(name="candidate_contact_no")
	private String candidateContactNo;
	

	@Email
	@Column(name="candidat_email", unique=true)
	private String candidateEmail;
	
	@Column(name="candidate_password")
	private String candidatePassword;
	
	
	@Column(name="candidate_exp")
	private String candidateExp;
	
	@Column(name="candidate_campus")
	private String candidateCampus;
	
	@Column(name="candidate_unitersity")
	private String candidateUnitersity;
	
	@Column(name="candidate_address")
	private String candidateAddress;
	
	private int candidateState;
	
	private int candidateCity;
	
	private int candidateCategory;
	
	@Column(name="candidate_passout_year")
	private String candidatePassoutYear;
	
	@Column(name="candidate_status")
	private int candidateStatus;

	public Integer getCandidateId() {
		return candidateId;
	}

	public void setCandidateId(Integer candidateId) {
		this.candidateId = candidateId;
	}

	public String getCandidateName() {
		return candidateName;
	}

	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}

	public String getCandidateContactNo() {
		return candidateContactNo;
	}

	public void setCandidateContactNo(String candidateContactNo) {
		this.candidateContactNo = candidateContactNo;
	}

	public String getCandidateEmail() {
		return candidateEmail;
	}

	public void setCandidateEmail(String candidateEmail) {
		this.candidateEmail = candidateEmail;
	}

	public String getCandidatePassword() {
		return candidatePassword;
	}

	public void setCandidatePassword(String candidatePassword) {
		this.candidatePassword = candidatePassword;
	}

	public String getCandidateExp() {
		return candidateExp;
	}

	public void setCandidateExp(String candidateExp) {
		this.candidateExp = candidateExp;
	}

	public String getCandidateCampus() {
		return candidateCampus;
	}

	public void setCandidateCampus(String candidateCampus) {
		this.candidateCampus = candidateCampus;
	}

	public String getCandidateUnitersity() {
		return candidateUnitersity;
	}

	public void setCandidateUnitersity(String candidateUnitersity) {
		this.candidateUnitersity = candidateUnitersity;
	}

	public String getCandidateAddress() {
		return candidateAddress;
	}

	public void setCandidateAddress(String candidateAddress) {
		this.candidateAddress = candidateAddress;
	}

		public String getCandidatePassoutYear() {
		return candidatePassoutYear;
	}

	public void setCandidatePassoutYear(String candidatePassoutYear) {
		this.candidatePassoutYear = candidatePassoutYear;
	}

	
	public int getCandidateState() {
		return candidateState;
	}

	public void setCandidateState(int candidateState) {
		this.candidateState = candidateState;
	}

	public int getCandidateCity() {
		return candidateCity;
	}

	public void setCandidateCity(int candidateCity) {
		this.candidateCity = candidateCity;
	}

	public int getCandidateCategory() {
		return candidateCategory;
	}

	public void setCandidateCategory(int candidateCategory) {
		this.candidateCategory = candidateCategory;
	}

	public int getCandidateStatus() {
		return candidateStatus;
	}

	public void setCandidateStatus(int candidateStatus) {
		this.candidateStatus = candidateStatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Candidate [candidateId=" + candidateId + ", candidateName=" + candidateName + ", candidateContactNo="
				+ candidateContactNo + ", candidateEmail=" + candidateEmail + ", candidatePassword=" + candidatePassword
				+ ", candidateExp=" + candidateExp + ", candidateCampus=" + candidateCampus + ", candidateUnitersity="
				+ candidateUnitersity + ", candidateAddress=" + candidateAddress + ", candidateState=" + candidateState
				+ ", candidateCity=" + candidateCity + ", candidateCategory=" + candidateCategory
				+ ", candidatePassoutYear=" + candidatePassoutYear + ", candidateStatus=" + candidateStatus + "]";
	}
	
	
	

}
