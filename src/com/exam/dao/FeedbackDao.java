package com.exam.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.exam.bean.FeedbackBean;
import com.exam.listener.ConnectionFactory;

public class FeedbackDao 
{
	private static final Logger logger = Logger.getLogger(FeedbackDao.class);
	public static void insertFeedback(FeedbackBean feedbackBean)
	{
		try
		{
			logger.info("FeedbackDao insertFeedback:"+feedbackBean);
			Connection connection=ConnectionFactory.getConnection();
			String sqlQuery="insert into feedback(loginId,username,message,date) values(?,?,?,?)";
			logger.debug("SQLQuery:"+sqlQuery);
			PreparedStatement ptst=connection.prepareStatement(sqlQuery);
			ptst.setInt(1,feedbackBean.getLoginId());
			ptst.setString(2, feedbackBean.getUsername());
			ptst.setString(3,feedbackBean.getMessage());
			ptst.setDate(4,feedbackBean.getDate());			
			ptst.executeUpdate();				
			logger.info("Inserted FeedbackBean");
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}		
	}
	public static ArrayList<FeedbackBean> getFeedback()
	{
		ArrayList<FeedbackBean> feedbackList=new ArrayList<FeedbackBean>(); 
		try
		{
			logger.info("FeedbackDao getFeedback");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select loginid,username,message,date from feedback order by id desc limit 15";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				feedbackList.add(new FeedbackBean((int)rs.getInt("loginid"),(String)rs.getString("username"),(String)rs.getString("message"),(Date)rs.getDate("date")));			
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return feedbackList;
	}
}