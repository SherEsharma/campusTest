package com.abgroups.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abgroups.model.Objective;
import com.abgroups.repository.ExamRepository;
import com.abgroups.service.ExamService;

@Service
public class ExamServiceImpl implements ExamService {

	@Autowired
	ExamRepository examrepo;
	
	private Logger logger= Logger.getLogger(ExamServiceImpl.class);
	
	@Override
	public List<Objective> getAllQuestionResoning() {
		List<Objective> list=examrepo.getAllQuestionResoning();
		logger.info("getAllQuestionResoning() :: "+list);
		return list;
	}

}
