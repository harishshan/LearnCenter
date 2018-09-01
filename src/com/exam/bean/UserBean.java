package com.exam.bean;

public class UserBean 
{
	private int loginId;
	private String username;
	private String password;
	private String emailId;
	private String role;
		
	public UserBean() 
	{
		super();		
	}
	public UserBean(String username, String password) 
	{
		super();
		this.username = username;
		this.password = password;
	}	
	public UserBean(String username) 
	{
		super();
		this.username = username;
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
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public String getEmailId() 
	{
		return emailId;
	}
	public void setEmailId(String emailId) 
	{
		this.emailId = emailId;
	}		
	public String getRole() 
	{
		return role;
	}
	public void setRole(String role) 
	{
		this.role = role;
	}
	
	@Override
	public String toString() 
	{
		return "[LoginId:"+loginId+", Username:"+username+", Password:"+password+", EmailId:"+emailId+",role:"+role+"]";
	}
}
