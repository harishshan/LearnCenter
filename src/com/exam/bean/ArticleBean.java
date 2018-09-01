package com.exam.bean;

import java.sql.Date;

public class ArticleBean 
{
	private int id;
	private int loginId;
	private String firstName;
	private String title;
	private String articleContent;
	private Date date;	
	private int rate;
	
	public ArticleBean(int id,int loginId, String firstName,String title, String articleContent,Date date) 
	{
		super();
		this.id=id;
		this.loginId = loginId;
		this.firstName = firstName;
		this.title=title;
		this.articleContent = articleContent;
		this.date = date;
	}
	
	public ArticleBean(int loginId, String firstName, String title,	String articleContent, Date date) 
	{
		super();
		this.loginId = loginId;
		this.firstName = firstName;
		this.title = title;
		this.articleContent = articleContent;
		this.date = date;
	}

	public int getId() 
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public int getLoginId() 
	{
		return loginId;
	}
	public void setLoginId(int loginId) 
	{
		this.loginId = loginId;
	}
	public String getFirstName() 
	{
		return firstName;
	}
	public void setFirstName(String firstName) 
	{
		this.firstName = firstName;
	}
	public String getTitle() 
	{
		return title;
	}
	public void setTitle(String title) 
	{
		this.title = title;
	}
	public String getArticleContent() 
	{
		return articleContent;
	}
	public void setArticleContent(String articleContent) 
	{
		this.articleContent = articleContent;
	}
	public Date getDate() 
	{
		return date;
	}
	public void setDate(Date date) 
	{
		this.date = date;
	}
	
	public int getRate() 
	{
		return rate;
	}
	public void setRate(int rate) 
	{
		this.rate = rate;
	}
	@Override
	public String toString() 
	{
		return "[LoginId:"+loginId+", Firstname:"+firstName+", Title:"+title+", Content:"+articleContent+", Date:"+date+"]";
	}
}