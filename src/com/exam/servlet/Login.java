package com.exam.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.exam.bean.UserBean;
import com.exam.dao.LoginDao;
import com.exam.util.RSA;

public class Login extends HttpServlet
{
	private static final long serialVersionUID = 7671481830200958595L;
	private static final Logger logger = Logger.getLogger(LoginDao.class);	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			logger.info("Login Servlet Username:"+username+" Password:"+password);			
			String encryptedPassword=RSA.encrypt(password);
			logger.info("Encrpted Password:"+encryptedPassword);
			UserBean userBean=new UserBean(username,encryptedPassword);			
			LoginDao.getLogin(userBean);
			HttpSession session=request.getSession();
			session.setAttribute("userBean",userBean);
			String pagePath="login.jsp";
			if(userBean.getRole()==null)
			{
				pagePath="login.jsp";
				logger.debug("User not found RequestDispatching to login.jsp");
			}
			else if(userBean.getRole().equals("user"))
			{
				pagePath="home.jsp";
				logger.debug("Role:User RequestDispatching to home.jsp");
			}
			else if(userBean.getRole().equals("admin"))
			{
				pagePath="adminhome.jsp";
				logger.debug("Role:admin RequestDispatching to adminhome.jsp");
			}	
			RequestDispatcher view=request.getRequestDispatcher(pagePath);
			view.forward(request, response);					
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}