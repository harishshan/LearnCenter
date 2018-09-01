package com.exam.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.exam.bean.EBooksBean;
import com.exam.bean.EBooksCategoryBean;
import com.exam.listener.ConnectionFactory;

public class EBooksDao
{
	private static final Logger logger = Logger.getLogger(LoginDao.class);
	public static ArrayList<EBooksCategoryBean> getEBooksCategory()
	{
		ArrayList<EBooksCategoryBean> ebooksCategoryList=new ArrayList<EBooksCategoryBean>(); 
		try
		{
			logger.info("EBooksDao getEBooksCategory");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name from ebookscategory";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				ebooksCategoryList.add(new EBooksCategoryBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name")));			
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return ebooksCategoryList;
	}
	public static void insertEBooks(EBooksBean ebooksBean)
	{
		try
		{
			logger.info("EBooksDao InsertEBooks EBooksBeabn:"+ebooksBean);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();			
			String sqlQuery="insert into ebooks(path,categoryId,keyword) values('"+ebooksBean.getPath()+"',"+ebooksBean.getCategoryId()+",'"+ebooksBean.getKeyword()+"')";
			logger.debug("SQLQuery:"+sqlQuery);
			st.executeUpdate(sqlQuery);
			logger.info("EBooks Inserted Successfully");
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
	}
	public static ArrayList<EBooksBean> getEBooks(int categoryId)
	{
		ArrayList<EBooksBean> ebooksList=new ArrayList<EBooksBean>();
		try
		{
			logger.info("EBooksDao getEBooks CategoryId:"+categoryId);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,path,categoryId,keyword from ebooks where categoryId="+categoryId;
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{				
				ebooksList.add(new EBooksBean(new Integer((int)rs.getInt("id")), (String)rs.getString("path"),rs.getInt("categoryId"),rs.getString("keyword")));			
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
		return ebooksList;
	}
	public static EBooksBean getEBook(int bookId)
	{
		EBooksBean ebooksBean=null;
		try
		{
			logger.info("EBooksDao getEBook BookId:"+bookId);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,path,categoryId,keyword from ebooks where id="+bookId;
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{				
				ebooksBean=new EBooksBean(new Integer((int)rs.getInt("id")), (String)rs.getString("path"),rs.getInt("categoryId"),rs.getString("keyword"));			
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
		return ebooksBean;
	}
	public static ArrayList<EBooksBean> getEBooks(String keyword)
	{
		ArrayList<EBooksBean> ebooksList=new ArrayList<EBooksBean>();
		try
		{
			logger.info("EBooksDao getEBook keyword:"+keyword);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,path,categoryId,keyword from ebooks where keyword like '%"+keyword+"%' or path like '%"+keyword+"%'";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{	
				ebooksList.add(new EBooksBean(new Integer((int)rs.getInt("id")), (String)rs.getString("path"),rs.getInt("categoryId"),rs.getString("keyword")));			
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
		return ebooksList;
	}
}