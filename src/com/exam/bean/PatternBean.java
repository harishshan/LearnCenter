package com.exam.bean;

import java.util.ArrayList;

public class PatternBean 
{
	private int id;
	private String name;
	private int companyId;
	private double negativeMark;
	private int minCutOff;
	private int maxTimer;
	private boolean displayResult;
	private boolean displayAnswer;
	private int noOfSection;
	private int totalQuestion;
	private boolean active;
	private ArrayList<SectionBean> sectionList;
	
	
	public PatternBean() 
	{
		super();
	}

	public PatternBean(int id, String name, int companyId, double negativeMark,	int minCutOff, int maxTimer, boolean displayResult,	boolean displayAnswer, int noOfSection, int totalQuestion,boolean active) 
	{
		super();
		this.id = id;
		this.name = name;
		this.companyId = companyId;
		this.negativeMark = negativeMark;
		this.minCutOff = minCutOff;
		this.maxTimer = maxTimer;
		this.displayResult = displayResult;
		this.displayAnswer = displayAnswer;
		this.noOfSection = noOfSection;
		this.totalQuestion = totalQuestion;
		this.active=active;
	}

	public PatternBean(String name, int companyId, double negativeMark,	int minCutOff, int maxTimer, boolean displayResult,	boolean displayAnswer, int noOfSection,int totalQuestion,boolean active,ArrayList<SectionBean> sectionList) 
	{
		super();
		this.name = name;
		this.companyId = companyId;
		this.negativeMark = negativeMark;
		this.minCutOff = minCutOff;
		this.maxTimer = maxTimer;
		this.displayResult = displayResult;
		this.displayAnswer = displayAnswer;
		this.noOfSection = noOfSection;
		this.totalQuestion=totalQuestion;
		this.active=active;
		this.sectionList = sectionList;
	}
	
	public PatternBean(int id, String name, int companyId, double negativeMark,int minCutOff, int maxTimer, boolean displayResult,boolean displayAnswer, int noOfSection, int totalQuestion,boolean active,ArrayList<SectionBean> sectionList) 
	{
		super();
		this.id = id;
		this.name = name;
		this.companyId = companyId;
		this.negativeMark = negativeMark;
		this.minCutOff = minCutOff;
		this.maxTimer = maxTimer;
		this.displayResult = displayResult;
		this.displayAnswer = displayAnswer;
		this.noOfSection = noOfSection;
		this.totalQuestion = totalQuestion;
		this.active=active;
		this.sectionList = sectionList;
	}
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public int getCompanyId()
	{
		return companyId;
	}
	public void setCompanyId(int companyId) 
	{
		this.companyId = companyId;
	}
	public double getNegativeMark() 
	{
		return negativeMark;
	}
	public void setNegativeMark(double negativeMark) 
	{
		this.negativeMark = negativeMark;
	}
	public int getMinCutOff()
	{
		return minCutOff;
	}
	public void setMinCutOff(int minCutOff) 
	{
		this.minCutOff = minCutOff;
	}
	public int getMaxTimer() 
	{
		return maxTimer;
	}
	public void setMaxTimer(int maxTimer)
	{
		this.maxTimer = maxTimer;
	}
	public boolean isDisplayResult() 
	{
		return displayResult;
	}
	public void setDisplayResult(boolean displayResult)
	{
		this.displayResult = displayResult;
	}
	public boolean isDisplayAnswer() 
	{
		return displayAnswer;
	}
	public void setDisplayAnswer(boolean displayAnswer)
	{
		this.displayAnswer = displayAnswer;
	}
	public int getNoOfSection()
	{
		return noOfSection;
	}
	public void setNoOfSection(int noOfSection) 
	{
		this.noOfSection = noOfSection;
	}
	public int getTotalQuestion() 
	{
		return totalQuestion;
	}
	public void setTotalQuestion(int totalQuestion) 
	{
		this.totalQuestion = totalQuestion;
	}	
	public boolean isActive() 
	{
		return active;
	}
	public void setActive(boolean active) 
	{
		this.active = active;
	}
	public ArrayList<SectionBean> getSectionList() 
	{
		return sectionList;
	}
	public void setSectionList(ArrayList<SectionBean> sectionList) 
	{
		this.sectionList = sectionList;
	}
	@Override
	public String toString() 
	{
		return "[Pattern Name:"+name+", Company ID:"+companyId+", Negative Mark:"+negativeMark+", minimum Cut-Of:"+minCutOff+", Maximim Timer:"+maxTimer+", Display Result:"+displayResult+", Display Answer:"+displayAnswer+", TotalQuestion:"+totalQuestion+", Section:"+sectionList+"]";
	}
	
}