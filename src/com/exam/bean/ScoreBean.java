package com.exam.bean;

import java.sql.Date;

public class ScoreBean 
{
	private int loginId;
	private int patternId;
	private Date date;
	private int totalQuestions;
	private int answeredQuestion;
	private int correctAnswered;
	private int wrongAnswered;
	private double scoreObtained;
	private boolean result;

	public ScoreBean(int loginId, int patternId, Date date, int totalQuestions,int answeredQuestion, int correctAnswered, int wrongAnswered,double scoreObtained, boolean result) 
	{
		super();
		this.loginId = loginId;
		this.patternId = patternId;
		this.date = date;
		this.totalQuestions = totalQuestions;
		this.answeredQuestion = answeredQuestion;
		this.correctAnswered = correctAnswered;
		this.wrongAnswered = wrongAnswered;
		this.scoreObtained = scoreObtained;
		this.result = result;
	}

	public ScoreBean()
	{
		super();
	}

	public int getLoginId() 
	{
		return loginId;
	}
	public void setLoginId(int loginId) 
	{
		this.loginId = loginId;
	}
	public int getPatternId() 
	{
		return patternId;
	}
	public void setPatternId(int patternId) 
	{
		this.patternId = patternId;
	}
	public Date getDate() 
	{
		return date;
	}
	public void setDate(Date date) 
	{
		this.date = date;
	}
	public int getTotalQuestions() 
	{
		return totalQuestions;
	}
	public void setTotalQuestions(int totalQuestions) 
	{
		this.totalQuestions = totalQuestions;
	}
	public int getAnsweredQuestion() 
	{
		return answeredQuestion;
	}
	public void setAnsweredQuestion(int answeredQuestion) 
	{
		this.answeredQuestion = answeredQuestion;
	}
	public int getCorrectAnswered() 
	{
		return correctAnswered;
	}
	public void setCorrectAnswered(int correctAnswered) 
	{
		this.correctAnswered = correctAnswered;
	}
	public int getWrongAnswered() 
	{
		return wrongAnswered;
	}
	public void setWrongAnswered(int wrongAnswered) 
	{
		this.wrongAnswered = wrongAnswered;
	}
	public double getScoreObtained() 
	{
		return scoreObtained;
	}
	public void setScoreObtained(double scoreObtained) 
	{
		this.scoreObtained = scoreObtained;
	}

	public boolean isResult()
	{
		return result;
	}

	public void setResult(boolean result)
	{
		this.result = result;
	}
	@Override
	public String toString()
	{
		return "[LoginId:"+loginId+", PatternId:"+patternId+", Date:"+date+", TotalQuestion:"+totalQuestions+", AnsweredQuestion:"+answeredQuestion+", CorrectAnswered:"+correctAnswered+", WrongAnswered:"+wrongAnswered+", ScoreObtained:"+scoreObtained+", Result:"+result+"]";
	}

}
