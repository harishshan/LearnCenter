package com.exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.exam.bean.UserBean;
import com.exam.dao.LoginDao;
import com.exam.util.Email;
import com.exam.util.RSA;

public class ForgetPassword extends HttpServlet
{
	private static final long serialVersionUID = 5794973407718669879L;
	private static final Logger logger = Logger.getLogger(ForgetPassword.class);	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			String username=request.getParameter("username");
			logger.info("Forget Password for Username:"+username);
			UserBean userBean=new UserBean(username);
			LoginDao.getForgetPassword(userBean);
			Email email=new Email();
			String body="Hi "+username+" Your password is "+RSA.decrypt(userBean.getPassword());
			logger.info("SendTo: "+userBean.getEmailId()+" Subject: Learn Center [Forget Password] Body :"+body);
			
			email.sendMail(userBean.getEmailId(), "Learn Center [Forget Password]",body );
			response.getWriter().println("Please check your mail");
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}