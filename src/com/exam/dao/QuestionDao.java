package com.exam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.log4j.Logger;

import com.exam.bean.CompanyBean;
import com.exam.bean.PatternBean;
import com.exam.bean.QuestionBean;
import com.exam.bean.QuestionCategoryBean;
import com.exam.bean.ScoreBean;
import com.exam.bean.SectionBean;
import com.exam.listener.ConnectionFactory;

public class QuestionDao 
{
	private static final Logger logger = Logger.getLogger(QuestionDao.class);
	public static void activatePattern(int patternId)
	{
		try
		{
			logger.info("QuestionDao activatePattern PatternId:"+patternId);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="update pattern set active=0 where id <> "+patternId;
			logger.debug("SQLQuery:"+sqlQuery);
			st.executeUpdate(sqlQuery);
			sqlQuery="update pattern set active=1 where id = "+patternId;
			logger.debug("SQLQuery:"+sqlQuery);
			st.executeUpdate(sqlQuery);		
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
	public static void insertScore(ScoreBean scoreBean)
	{
		try
		{
			logger.info("QuestionDao Insert Score "+scoreBean);
			Connection connection=ConnectionFactory.getConnection();
			String sqlQuery="insert into usermarks(loginId,patternId,date,totalQuestions,answeredQuestions,correctAnswered,wrongAnswered,scoreObtained,result) values(?,?,?,?,?,?,?,?,?)";
			logger.debug("SQLQuery:"+sqlQuery);
			PreparedStatement ptst=connection.prepareStatement(sqlQuery);
			ptst.setInt(1,scoreBean.getLoginId());
			ptst.setInt(2, scoreBean.getPatternId());
			ptst.setDate(3,scoreBean.getDate());
			ptst.setInt(4, scoreBean.getTotalQuestions());
			ptst.setInt(5, scoreBean.getAnsweredQuestion());
			ptst.setInt(6, scoreBean.getCorrectAnswered());
			ptst.setInt(7, scoreBean.getWrongAnswered());
			ptst.setDouble(8, scoreBean.getScoreObtained());
			ptst.setBoolean(9, scoreBean.isResult());			
			ptst.executeUpdate();				
			logger.info("Inserted ScoreBean");
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
	public static ArrayList<PatternBean> getPatternList()
	{
		ArrayList<PatternBean> patternList=new ArrayList<PatternBean>();
		try
		{
			logger.info("QuestionDao getPatternList");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name,companyId,negativeMark,minCutOff,maxTimer,displayResult,displayAnswer,noOfSection,totalQuestion,active from pattern";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				patternList.add(new PatternBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name"),(int)rs.getInt("companyId"),(double)rs.getDouble("negativeMark"),(int)rs.getInt("minCutOff"),(int)rs.getInt("maxTimer"),(boolean)rs.getBoolean("displayResult"),(boolean)rs.getBoolean("displayAnswer"),(int)rs.getInt("noOfSection"),(int)rs.getInt("totalQuestion"),(boolean)rs.getBoolean("active")));			
			}	
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return patternList;
	}
	public static PatternBean getPattern()
	{
		PatternBean pattern=new PatternBean();
		try
		{
			logger.info("QuestionDao getPattern");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name,companyId,negativeMark,minCutOff,maxTimer,displayResult,displayAnswer,noOfSection,totalQuestion,active from pattern where active =1";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				pattern=new PatternBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name"),(int)rs.getInt("companyId"),(double)rs.getDouble("negativeMark"),(int)rs.getInt("minCutOff"),(int)rs.getInt("maxTimer"),(boolean)rs.getBoolean("displayResult"),(boolean)rs.getBoolean("displayAnswer"),(int)rs.getInt("noOfSection"),(int)rs.getInt("totalQuestion"),(boolean)rs.getBoolean("active"));			
			}
			rs.close();
			logger.info("Pattern retreived"+pattern);
			
			ArrayList<SectionBean> sectionList=new ArrayList<SectionBean>();
			sqlQuery="select categoryId,minCutOff,maxTimer,totalQuestion from section where patternId="+pattern.getId();
			logger.debug("SQLQuery:"+sqlQuery);
			rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				sectionList.add(new SectionBean(new Integer((int)rs.getInt("categoryId")), (int)rs.getInt("minCutOff"),(int)rs.getInt("maxTimer"),(int)rs.getInt("totalQuestion")));			
			}
			rs.close();
			pattern.setSectionList(sectionList);
			logger.info("Pattern with Section:"+sectionList);
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return pattern;
	}
	/*public static PatternBean getPattern(int patternId)
	{
		PatternBean pattern=null;
		ArrayList<SectionBean> sectionList=new ArrayList<SectionBean>();
		try
		{
			logger.info("QuestionDao getPatternList Pattern ID:"+patternId);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select categoryId,minCutOff,maxTimer,totalQuestion from section where patternId="+patternId;
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				sectionList.add(new SectionBean(new Integer((int)rs.getInt("categoryId")), (int)rs.getInt("minCutOff"),(int)rs.getInt("maxTimer"),(int)rs.getInt("totalQuestion")));			
			}
			rs.close();
			logger.info("Retrieved Section List");
			
			
			sqlQuery="select name,companyId,negativeMark,minCutOff,maxTimer,displayResult,displayAnswer,totalQuestion,active,noOfSection from pattern where id="+patternId;
			logger.debug(sqlQuery);
			rs=st.executeQuery(sqlQuery);
			if(rs.next())
			{
				pattern=new PatternBean((String)rs.getString("name"), (int)rs.getInt("companyId"),(double)rs.getDouble("negativeMark"), (int)rs.getInt("minCutOff"), (int)rs.getInt("maxTimer"), (boolean)rs.getBoolean("displayResult"), (boolean)rs.getBoolean("displayAnswer"),(int)rs.getInt("totalQuestion"), (int)rs.getInt("noOfSection"),(boolean)rs.getBoolean("active"),sectionList);
			}
			logger.info("Retrieved Pattern");
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
		return pattern;
	}
	*/
	public static ArrayList<QuestionBean> getQuestionList(int companyId,int categoryId,int limit)
	{
		ArrayList<QuestionBean> questionList=new ArrayList<QuestionBean>();
		try
		{
			logger.info("QuestionDao getQuestionList");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,question,optionA,optionB,optionC,optionD,answer,companyId,categoryId from question where companyId="+companyId+" and categoryId="+categoryId+" order by rand() limit "+limit;
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				questionList.add(new QuestionBean(new Integer((int)rs.getInt("id")), (String)rs.getString("question"),(String)rs.getString("optionA"),(String)rs.getString("optionB"),(String)rs.getString("optionC"),(String)rs.getString("optionD"),(String)rs.getString("answer"),(int)rs.getInt("companyId"),(int)rs.getInt("categoryId")));			
			}			
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
		return questionList;
	}
	public static ArrayList<QuestionCategoryBean> getCategoryList()
	{
		ArrayList<QuestionCategoryBean> questionCategoryList=new ArrayList<QuestionCategoryBean>();
		try
		{
			logger.info("QuestionDao getCategory");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name from questioncategory";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				questionCategoryList.add(new QuestionCategoryBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name")));			
			}			
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
		return questionCategoryList;
	}
	public static ArrayList<CompanyBean> getCompanyList()
	{
		ArrayList<CompanyBean> companyList=new ArrayList<CompanyBean>();
		try
		{
			logger.info("QuestionDao getCategory");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name from company";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				companyList.add(new CompanyBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name")));			
			}			
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
		return companyList;
	}
	public static void insertQuestion(QuestionBean questionBean)
	{
		try
		{
			logger.info("QuestionDao insertQuestion QuestionBean:"+questionBean);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();			
			String sqlQuery="insert into question(question,optionA,optionB,optionC,optionD,answer,companyId,categoryId) values('"+questionBean.getQuestion()+"','"+questionBean.getOptionA()+"','"+questionBean.getOptionB()+"','"+questionBean.getOptionC()+"','"+questionBean.getOptionD()+"','"+questionBean.getAnswer()+"',"+questionBean.getCompanyId()+","+questionBean.getCategoryId()+")";
			logger.debug("SQLQuery:"+sqlQuery);
			st.executeUpdate(sqlQuery);
			logger.info("Question Inserted Successfully");
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
	}
	public static void insertPattern(PatternBean patternBean)
	{
		try
		{
			logger.info("QuestionDao insertPattern patternBean:"+patternBean);
			Connection con=ConnectionFactory.getConnection();
			try
			{
				con.setAutoCommit(false);
				Statement st=con.createStatement();			
				String sqlQuery="insert into pattern(name,companyId,negativeMark,minCutOff,maxTimer,displayResult,displayAnswer,totalQuestion,noOfSection) values('"+patternBean.getName()+"',"+patternBean.getCompanyId()+","+patternBean.getNegativeMark()+","+patternBean.getMinCutOff()+","+patternBean.getMaxTimer()+","+patternBean.isDisplayResult()+","+patternBean.isDisplayAnswer()+","+patternBean.getTotalQuestion()+","+patternBean.getNoOfSection()+")";
				logger.debug("SQLQuery:"+sqlQuery);
				st.executeUpdate(sqlQuery,Statement.RETURN_GENERATED_KEYS);
				ResultSet rs=st.getGeneratedKeys();
				int patterId=0;
				if(rs.next())
					patterId=rs.getInt(1);
				rs.close();
				logger.info("Pattern Inserted Successfully");
				ArrayList<SectionBean> sectionList=patternBean.getSectionList();
				Iterator<SectionBean> sectionIterator=sectionList.iterator();
				while(sectionIterator.hasNext())
				{
					SectionBean section=(SectionBean)sectionIterator.next();
					sqlQuery="insert into section(patternId,categoryId,minCutOff,maxTimer,totalQuestion) values("+patterId+","+section.getCategoryId()+","+section.getMinCutOff()+","+section.getMaxTimer()+","+section.getTotalQuestion()+")";
					logger.debug("SQLQuery:"+sqlQuery);
					st.executeUpdate(sqlQuery);
				}				
				con.commit();
				con.setAutoCommit(true);
			}
			catch(Exception e)
			{
				logger.error(e.toString(),e);
				logger.info("Roll Back Records");
				con.rollback();
			}
			logger.info("Pattern Inserted Successfully");
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}	
}