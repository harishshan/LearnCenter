package com.exam.bean;

public class CompanyBean 
{
	private int id;
	private String name;
	
	public CompanyBean(int id, String name) 
	{
		super();
		this.id = id;
		this.name = name;
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
	@Override
	public String toString() 
	{
		return "[Id:"+id+", Name:"+name+"]";
	}
}
