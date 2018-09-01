package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.exam.bean.ArticleRatingBean;
import com.exam.bean.UserBean;
import com.exam.dao.ArticleDao;
import com.exam.util.FormatConverter;

public class Rate  extends HttpServlet
{
	private static final long serialVersionUID = -1190759957325195090L;
	private static final Logger logger = Logger.getLogger(Rate.class);
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			String rateStr=request.getParameter("rate");
			String articleIdStr=request.getParameter("articleid");
			HttpSession session=request.getSession();
			UserBean userBean=(UserBean)session.getAttribute("userBean");
			logger.info("User:"+ userBean.getUsername()+"Rating :"+rateStr+" ArticleId:"+articleIdStr);
			int rate=FormatConverter.getInt(rateStr);
			int articleId=FormatConverter.getInt(articleIdStr);		
			ArticleRatingBean articleRating=new ArticleRatingBean(articleId,userBean.getLoginId(),rate,new Date(new java.util.Date().getTime()));
			ArticleDao.insertArticleRating(articleRating);
			PrintWriter pw=response.getWriter();
			pw.write("Your Rating is "+rate);			
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
	}
}
