package com.exam.bean;

public class SectionBean 
{
	private int categoryId;
	private int minCutOff;
	private int maxTimer;
	private int totalQuestion;
	public SectionBean(int categoryId, int minCutOff, int maxTimer,int totalQuestion) 
	{
		super();
		this.categoryId = categoryId;
		this.minCutOff = minCutOff;
		this.maxTimer = maxTimer;
		this.totalQuestion=totalQuestion;
	}
	public int getCategoryId() 
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
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
	public int getTotalQuestion() 
	{
		return totalQuestion;
	}
	public void setTotalQuestion(int totalQuestion) 
	{
		this.totalQuestion = totalQuestion;
	}
	@Override
	public String toString() 
	{
		return "[Category ID:"+categoryId+", Minimum Cut-Off:"+minCutOff+", Maximum Timer:"+maxTimer+", TotalQuestion:"+totalQuestion+"]";
	}	
}
