package com.exam.bean;

import java.sql.Date;

public class QuestionBean 
{
	private int id;
	private String question;
	private String optionA;
	private String optionB;
	private String optionC;
	private String optionD;
	private String answer;
	private int categoryId;
	private int companyId;
	private String userAnswer;
	private Date answeredTime;	
	public QuestionBean(int id, String question, String optionA,String optionB, String optionC, String optionD, String answer,	int categoryId, int companyId)
	{
		super();
		this.id = id;
		this.question = question;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.answer = answer;
		this.categoryId = categoryId;
		this.companyId = companyId;
	}

	public QuestionBean(String question, String optionA, String optionB,String optionC, String optionD, String answer, int categoryId,int companyId) 
	{
		super();
		this.question = question;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.answer = answer;
		this.categoryId = categoryId;
		this.companyId = companyId;
	}

	public String getQuestion() 
	{
		return question;
	}
	public void setQuestion(String question) 
	{
		this.question = question;
	}
	public String getOptionA() 
	{
		return optionA;
	}
	public void setOptionA(String optionA) 
	{
		this.optionA = optionA;
	}
	public String getOptionB() 
	{
		return optionB;
	}
	public void setOptionB(String optionB) 
	{
		this.optionB = optionB;
	}
	public String getOptionC() 
	{
		return optionC;
	}
	public void setOptionC(String optionC) 
	{
		this.optionC = optionC;
	}
	public String getOptionD() 
	{
		return optionD;
	}
	public void setOptionD(String optionD) 
	{
		this.optionD = optionD;
	}
	public String getAnswer() 
	{
		return answer;
	}
	public void setAnswer(String answer) 
	{
		this.answer = answer;
	}
	public int getCategoryId() 
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}
	public int getCompanyId() 
	{
		return companyId;
	}
	public void setCompanyId(int companyId) 
	{
		this.companyId = companyId;
	}
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}	
	public String getUserAnswer() 
	{
		return userAnswer;
	}
	public void setUserAnswer(String userAnswer) 
	{
		this.userAnswer = userAnswer;
	}

	public Date getAnsweredTime() 
	{
		return answeredTime;
	}

	public void setAnsweredTime(Date answeredTime) 
	{
		this.answeredTime = answeredTime;
	}

	@Override
	public String toString() 
	{
		return "[Id:"+id+", Question:"+question+", OptionA:"+optionA+", OptionB:"+optionB+",optionC:"+optionC+", optionD:"+optionD+", Answer:"+answer+", Company:"+companyId+", Category:"+categoryId+"]";
	}
}