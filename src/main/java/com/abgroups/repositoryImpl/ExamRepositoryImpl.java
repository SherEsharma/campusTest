package com.abgroups.repositoryImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.abgroups.model.Objective;
import com.abgroups.repository.ExamRepository;
@Repository
@Transactional
public class ExamRepositoryImpl implements ExamRepository {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Objective> getAllQuestionResoning() {
        Criteria crit = em.unwrap(Session.class).createCriteria(Objective.class);
        List<Objective> list = crit.list();
		return list;
	}

}
