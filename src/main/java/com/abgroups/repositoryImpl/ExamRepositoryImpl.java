package com.abgroups.repositoryImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.abgroups.model.Objective;
import com.abgroups.repository.ExamRepository;

@Repository("examRepo")
public class ExamRepositoryImpl extends AbstractDao<Integer, Objective> implements ExamRepository {

	@Override
	public List<Objective> getAllQuestionResoning() {
		Objective question = new Objective();
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("category.categoryId", 1));
		criteria.add(Restrictions.eq("category.isActiveCategory", 0));
		criteria.add(Restrictions.eq("isActiveQuestion", 0));
		
		/*criteria.add(Restrictions.eq("isDeleteCategory", 0));*/
		return (List<Objective>) criteria.list();
	}

}
