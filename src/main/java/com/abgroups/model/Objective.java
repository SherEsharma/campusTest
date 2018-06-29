package com.abgroups.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="objective_exam")
public class Objective {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "question_id")
	private Integer questionId;
	
	@Column(name="question",length=2000)
	private String quetion;
	
	@Column(name="question_one")
	private String optionOne;
	
	@Column(name="question_second")
	private String optionSecond;
	
	@Column(name="question_thrid")
	private String optionThrid;
	
	@Column(name="question_four")
	private String optionFour;
	
	@Column(name="answer")
	private String answer;
	
	@Column(name="is_active_question")
	private Integer isActiveQuestion;
	
	@ManyToOne(fetch=FetchType.EAGER,targetEntity=Category.class)
	@JoinColumn(name="categor_id",referencedColumnName="categor_id")	
	private Category category;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Objective [questionId=" + questionId + ", quetion=" + quetion + ", optionOne=" + optionOne
				+ ", optionSecond=" + optionSecond + ", optionThrid=" + optionThrid + ", optionFour=" + optionFour
				+ ", answer=" + answer + ", isActiveQuestion=" + isActiveQuestion + ", category=" + category + "]";
	}

	public Integer getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}

	public String getQuetion() {
		return quetion;
	}

	public void setQuetion(String quetion) {
		this.quetion = quetion;
	}

	public String getOptionOne() {
		return optionOne;
	}

	public void setOptionOne(String optionOne) {
		this.optionOne = optionOne;
	}

	public String getOptionSecond() {
		return optionSecond;
	}

	public void setOptionSecond(String optionSecond) {
		this.optionSecond = optionSecond;
	}

	public String getOptionThrid() {
		return optionThrid;
	}

	public void setOptionThrid(String optionThrid) {
		this.optionThrid = optionThrid;
	}

	public String getOptionFour() {
		return optionFour;
	}

	public void setOptionFour(String optionFour) {
		this.optionFour = optionFour;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Integer getIsActiveQuestion() {
		return isActiveQuestion;
	}

	public void setIsActiveQuestion(Integer isActiveQuestion) {
		this.isActiveQuestion = isActiveQuestion;
	}
	
	
	
}
