package com.exam.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.exam.bean.ArticleBean;
import com.exam.bean.ArticleRatingBean;
import com.exam.listener.ConnectionFactory;

public class ArticleDao 
{
	private static final Logger logger = Logger.getLogger(ArticleDao.class);
	public static void insertArticle(ArticleBean articleBean)
	{
		try
		{
			logger.info("ArticleDao insertArticle:"+articleBean);
			Connection connection=ConnectionFactory.getConnection();
			String sqlQuery="insert into article(loginId,username,title,content,date,active) values(?,?,?,?,?,1)";
			logger.debug("SQLQuery:"+sqlQuery);
			PreparedStatement ptst=connection.prepareStatement(sqlQuery);
			ptst.setInt(1,articleBean.getLoginId());
			ptst.setString(2, articleBean.getFirstName());
			ptst.setString(3, articleBean.getTitle());
			ptst.setString(4,articleBean.getArticleContent());
			ptst.setDate(5,articleBean.getDate());			
			ptst.executeUpdate();				
			logger.info("Inserted ArticleBean");
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}		
	}
	public static void insertArticleRating(ArticleRatingBean articleRatingBean)
	{
		try
		{
			logger.info("ArticleDao insertArticleRating:"+articleRatingBean);
			Connection connection=ConnectionFactory.getConnection();
			Statement st=connection.createStatement();
			String sqlQuery="Select count(*) from articlerating where articleId="+articleRatingBean.getArticleId()+" and loginId="+articleRatingBean.getUserId();
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			int count=0;
			while(rs.next())
			{
				count=rs.getInt(1);	
			}
			if(count==0)
			{
				sqlQuery="insert into articlerating(articleId,loginId,rate,date) values(?,?,?,?)";
				logger.debug("SQLQuery:"+sqlQuery);
				PreparedStatement ptst=connection.prepareStatement(sqlQuery);
				ptst.setInt(1,articleRatingBean.getArticleId());
				ptst.setInt(2, articleRatingBean.getUserId());
				ptst.setInt(3, articleRatingBean.getRate());
				ptst.setDate(4,articleRatingBean.getDate());			
				ptst.executeUpdate();				
				logger.info("Inserted ArticleRatingBean");
			}
			else
			{
				sqlQuery="update articlerating set rate=? , date=? where articleId=? and loginId=?";
				logger.debug("SQLQuery:"+sqlQuery);
				PreparedStatement ptst=connection.prepareStatement(sqlQuery);
				ptst.setInt(1, articleRatingBean.getRate());
				ptst.setDate(2,articleRatingBean.getDate());
				ptst.setInt(3,articleRatingBean.getArticleId());
				ptst.setInt(4, articleRatingBean.getUserId());							
				ptst.executeUpdate();				
				logger.info("Updated ArticleRatingBean");
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}		
	}
	public static ArrayList<ArticleBean> getArticleList()
	{
		ArrayList<ArticleBean> articleList=new ArrayList<ArticleBean>(); 
		try
		{
			logger.info("ArticleDao getArticle");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,loginid,username,title,content,date from article where active=1 order by id desc";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				articleList.add(new ArticleBean((int)rs.getInt("id"),(int)rs.getInt("loginid"),(String)rs.getString("username"),(String)rs.getString("title"),(String)rs.getString("content"),(Date)rs.getDate("date")));			
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return articleList;
	}
	public static ArticleBean getArticle(int id)
	{
		ArticleBean article=null; 
		try
		{
			logger.info("ArticleDao getArticle");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,loginid,username,title,content,date from article where id="+id+" and active=1";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				article=new ArticleBean((int)rs.getInt("id"),(int)rs.getInt("loginid"),(String)rs.getString("username"),(String)rs.getString("title"),(String)rs.getString("content"),(Date)rs.getDate("date"));			
			}
			rs.close();
			sqlQuery="select avg(rate) from articlerating where articleid="+id;
			logger.debug("SQLQuery:"+sqlQuery);
			rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				article.setRate(rs.getInt(1));			
			}
			rs.close();
			logger.info("Retrived ArticleBean: "+article);
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return article;
	}
	public static ArticleBean getArticle()
	{
		ArticleBean article=null; 
		try
		{
			logger.info("ArticleDao getArticle");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,loginid,username,title,content,date from article where active=1 order by id desc";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				article=new ArticleBean((int)rs.getInt("id"),(int)rs.getInt("loginid"),(String)rs.getString("username"),(String)rs.getString("title"),(String)rs.getString("content"),(Date)rs.getDate("date"));			
			}
			logger.info("Retrived ArticleBean: "+article);
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return article;
	}
}