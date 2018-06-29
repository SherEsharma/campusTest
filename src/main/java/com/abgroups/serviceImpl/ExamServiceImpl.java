package com.abgroups.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abgroups.model.Objective;
import com.abgroups.repository.ExamRepository;
import com.abgroups.service.ExamService;


@Service("exam")
@Transactional
public class ExamServiceImpl implements ExamService {

	@Autowired
	private ExamRepository examRepo;
	
	
	@Override
	public List<Objective> getAllQuestionResoning() {
		// TODO Auto-generated method stub
		List <Objective> list=examRepo.getAllQuestionResoning();
		return list;
	}

}
