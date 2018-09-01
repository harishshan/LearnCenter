package com.exam.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.exam.bean.QuestionBean;
import com.exam.dao.QuestionDao;
import com.exam.util.FormatConverter;

public class QuestionUpload  extends HttpServlet 
{
	private static final long serialVersionUID = -8979830567187583191L;
	private static final Logger logger = Logger.getLogger(QuestionUpload.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			String question=(String)request.getParameter("editor1");
			String optionA=(String)request.getParameter("optionA");
			String optionB=(String)request.getParameter("optionB");
			String optionC=(String)request.getParameter("optionC");
			String optionD=(String)request.getParameter("optionD");
			String answer=(String)request.getParameter("answer");
			String categoryIdStr=(String)request.getParameter("category");
			String companyIdStr=(String)request.getParameter("company");
			logger.info("Question:"+question+", OptionA:"+optionA+", OptionB:"+optionB+",optionC:"+optionC+", optionD:"+optionD+", Answer:"+answer+", Company:"+companyIdStr+", Category:"+categoryIdStr+"]");
			int categoryId=FormatConverter.getInt(categoryIdStr);
			int companyId=FormatConverter.getInt(companyIdStr);
			QuestionBean questionBean=new QuestionBean(question, optionA, optionB, optionC, optionD, answer, categoryId, companyId);
			QuestionDao.insertQuestion(questionBean);
			logger.info("Question Inserted:"+questionBean);
			RequestDispatcher view = request.getRequestDispatcher("questionupload.jsp");
			view.forward(request, response);
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}
