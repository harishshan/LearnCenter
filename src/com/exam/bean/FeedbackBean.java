package com.exam.bean;

import java.sql.Date;

public class FeedbackBean 
{
	private int loginId;
	private String username;
	private String message;
	private Date date;
	public FeedbackBean(int loginId,String username, String message, Date date) 
	{
		super();
		this.loginId = loginId;
		this.username=username;
		this.message = message;
		this.date = date;
	}
	public int getLoginId() 
	{
		return loginId;
	}
	public void setLoginId(int loginId) 
	{
		this.loginId = loginId;
	}
	public String getUsername() 
	{
		return username;
	}
	public void setUsername(String username) 
	{
		this.username = username;
	}
	public String getMessage() 
	{
		return message;
	}
	public void setMessage(String message) 
	{
		this.message = message;
	}
	public Date getDate() 
	{
		return date;
	}
	public void setDate(Date date) 
	{
		this.date = date;
	}
	@Override
	public String toString() 
	{
		return "[LoginId:"+loginId+", Username:"+username+", Message:"+message+", Date:"+date+"]";
	}
}