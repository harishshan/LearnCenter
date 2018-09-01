package com.exam.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.exam.bean.FeedbackBean;
import com.exam.bean.UserBean;
import com.exam.dao.FeedbackDao;

public class Feedback extends HttpServlet
{
	private static final long serialVersionUID = -747369638078530502L;
	private static final Logger logger = Logger.getLogger(Feedback.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			HttpSession session=request.getSession();
			UserBean userBean=(UserBean)session.getAttribute("userBean");
			String message=request.getParameter("message");
			FeedbackBean feedbackBean=new FeedbackBean(userBean.getLoginId(),userBean.getUsername(),message,new Date(new java.util.Date().getTime()));
			logger.info("FeedbackBean:"+feedbackBean);
			FeedbackDao.insertFeedback(feedbackBean);
			RequestDispatcher view=request.getRequestDispatcher("feedback.jsp");
			view.forward(request, response);			
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}