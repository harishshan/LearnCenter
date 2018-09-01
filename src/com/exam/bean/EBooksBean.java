package com.exam.bean;

public class EBooksBean
{
	private int id;
	private String path;
	private int categoryId;
	private String keyword;
	
	public EBooksBean()
	{
		super();
	}
	public EBooksBean(String path, int categoryId, String keyword)
	{
		super();
		this.path = path;
		this.categoryId = categoryId;
		this.keyword = keyword;
	}	
	public EBooksBean(int id, String path, int categoryId, String keyword)
	{
		super();
		this.id = id;
		this.path = path;
		this.categoryId = categoryId;
		this.keyword = keyword;
	}

	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public int getCategoryId()
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId)
	{
		this.categoryId = categoryId;
	}
	public String getKeyword()
	{
		return keyword;
	}
	public void setKeyword(String keyword)
	{
		this.keyword = keyword;
	}
	@Override
	public String toString()
	{
		return "[Path:"+path+", CategoryId:"+categoryId+", Keyword:"+keyword+"]";
	}
}
