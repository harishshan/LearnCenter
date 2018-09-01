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

import com.exam.bean.ArticleBean;
import com.exam.bean.UserBean;
import com.exam.dao.ArticleDao;

public class Article extends HttpServlet
{
	private static final long serialVersionUID = 8459750831274461003L;
	private static final Logger logger = Logger.getLogger(Article.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			String articleContent=(String)request.getParameter("editor1");
			String title=(String)request.getParameter("title");
			HttpSession session=request.getSession();
			UserBean userBean=(UserBean)session.getAttribute("userBean");	
			ArticleBean articleBean=new ArticleBean(userBean.getLoginId(),userBean.getUsername(),title,articleContent,new Date(new java.util.Date().getTime()));
			logger.info("ArticleBean:"+articleBean);
			ArticleDao.insertArticle(articleBean);
			RequestDispatcher view=request.getRequestDispatcher("article.jsp");
			view.forward(request, response);
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}
