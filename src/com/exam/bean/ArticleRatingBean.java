package com.exam.bean;

import java.sql.Date;

public class ArticleRatingBean 
{
	private int articleId;
	private int userId;
	private int rate;
	private Date date;
	public ArticleRatingBean(int articleId, int userId, int rate, Date date) 
	{
		super();
		this.articleId = articleId;
		this.userId = userId;
		this.rate = rate;
		this.date = date;
	}
	public int getArticleId() 
	{
		return articleId;
	}
	public void setArticleId(int articleId) 
	{
		this.articleId = articleId;
	}
	public int getUserId() 
	{
		return userId;
	}
	public void setUserId(int userId) 
	{
		this.userId = userId;
	}
	public int getRate() 
	{
		return rate;
	}
	public void setRate(int rate) 
	{
		this.rate = rate;
	}
	public Date getDate() 
	{
		return date;
	}
	public void setDate(Date date) 
	{
		this.date = date;
	}	
}
