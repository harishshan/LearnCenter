package com.exam.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.exam.dao.QuestionDao;
import com.exam.util.FormatConverter;

public class ActivatePattern extends HttpServlet
{
	private static final long serialVersionUID = 3598581896781810364L;
	private static final Logger logger = Logger.getLogger(ActivatePattern.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			String patternIdStr=(String)request.getParameter("patternid");
			int patternId=FormatConverter.getInt(patternIdStr);
			QuestionDao.activatePattern(patternId);
			RequestDispatcher view=request.getRequestDispatcher("home.jsp");
			view.forward(request, response);
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}