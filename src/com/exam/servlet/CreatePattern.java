package com.exam.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.exam.bean.PatternBean;
import com.exam.bean.SectionBean;
import com.exam.dao.QuestionDao;
import com.exam.util.FormatConverter;

public class CreatePattern  extends HttpServlet
{
	private static final long serialVersionUID = 7444456143387576343L;
	private static final Logger logger = Logger.getLogger(CreatePattern.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			logger.info("CreatePatten Entered");
			String name=(String)request.getParameter("name");
			String companyIdStr=(String)request.getParameter("company");
			String negativeMarkStr=(String)request.getParameter("negativemark");
			String cuttOffStr=(String)request.getParameter("cuttoff");
			String timerStr=(String)request.getParameter("timer");
			String resultStr=(String)request.getParameter("result");
			String answerStr=(String)request.getParameter("answer");
			String totalQuestStr=(String)request.getParameter("totalquestion");
			String noOfSectionStr=(String)request.getParameter("noofsection");
			int noOfSection=FormatConverter.getInt(noOfSectionStr);
			ArrayList<SectionBean> sectionList=new ArrayList<SectionBean>();
			for(int i=1;i<=noOfSection;i++)
			{
				String categoryIdStr=(String)request.getParameter("category"+i);
				String minCutOffStr=(String)request.getParameter("cutoff"+i);
				String maxTimerStr=(String)request.getParameter("timer"+i);
				String totalQuestionStr=(String)request.getParameter("totalquestion"+i);
				int categoryId=FormatConverter.getInt(categoryIdStr);
				int minCutOff=FormatConverter.getInt(minCutOffStr);
				int maxTimer=FormatConverter.getInt(maxTimerStr);
				int totalQuestion=FormatConverter.getInt(totalQuestionStr);
				SectionBean section=new SectionBean(categoryId,minCutOff,maxTimer,totalQuestion);
				sectionList.add(section);
			}
			int companyId=FormatConverter.getInt(companyIdStr);
			double negativeMark=FormatConverter.getDouble(negativeMarkStr);
			int cutOff=FormatConverter.getInt(cuttOffStr);
			int timer=FormatConverter.getInt(timerStr);
			boolean displayResult=FormatConverter.getBoolean(resultStr);
			boolean displayAnswer=FormatConverter.getBoolean(answerStr);
			int totalQuest=FormatConverter.getInt(totalQuestStr);
			PatternBean patternBean=new PatternBean(name, companyId, negativeMark, cutOff,timer, displayResult, displayAnswer, noOfSection,totalQuest,false ,sectionList);
			QuestionDao.insertPattern(patternBean);
			RequestDispatcher view=request.getRequestDispatcher("patterncreation.jsp");
			view.forward(request,response);
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
	}
}
