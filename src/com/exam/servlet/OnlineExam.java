package com.exam.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.exam.bean.PatternBean;
import com.exam.bean.QuestionBean;
import com.exam.bean.ScoreBean;
import com.exam.bean.UserBean;
import com.exam.dao.QuestionDao;

public class OnlineExam  extends HttpServlet
{
	private static final long serialVersionUID = 8665695562290873341L;
	private static final Logger logger = Logger.getLogger(OnlineExam.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			HttpSession session=request.getSession();
			UserBean userBean=(UserBean)session.getAttribute("userBean");
			PatternBean pattern=(PatternBean)session.getAttribute("pattern");
			logger.info("Online Exam Submitted  by UserBean:"+userBean+" for Pattern "+pattern);
			int answered=0,correct=0,wrong=0;
			
			@SuppressWarnings("unchecked")
			ArrayList<QuestionBean> questionList=(ArrayList<QuestionBean>) session.getAttribute("questionlist");			
			for(int i=0;i<questionList.size();i++)
			{
				QuestionBean question=questionList.get(i);
				String answer=request.getParameter(""+question.getId());
				logger.info("Answer:"+answer);
				question.setUserAnswer(answer);
				if(answer!=null&&answer!="")
				{
					if(!answer.equals("null"))
					{
						answered=answered+1;
						if(question.getAnswer().equalsIgnoreCase(answer))
						{				
							correct=correct+1;
						}
						else 
						{
							wrong=wrong+1;
						}	
					}
				}
			}
			double score=correct-(wrong*pattern.getNegativeMark());			
			ScoreBean scoreBean=new ScoreBean(userBean.getLoginId(),pattern.getId(), new Date(new java.util.Date().getTime()), pattern.getTotalQuestion(), answered, correct, wrong, score, (score>=pattern.getMinCutOff()));
			session.setAttribute("scoreBean", scoreBean);
			QuestionDao.insertScore(scoreBean);
			logger.info("ScoreBean Inserted "+scoreBean);
			RequestDispatcher view=request.getRequestDispatcher("autograde.jsp");
			view.forward(request, response);
		}		
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}
