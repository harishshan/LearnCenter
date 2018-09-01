package com.exam.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.exam.bean.ChangePasswordBean;
import com.exam.bean.UserBean;
import com.exam.dao.LoginDao;
import com.exam.util.RSA;


public class ChangePassword extends HttpServlet
{
	private static final long serialVersionUID = 5794973407718669879L;
	private static final Logger logger = Logger.getLogger(ChangePassword.class);	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		try
		{
			HttpSession session=request.getSession();
			UserBean userBean=(UserBean)session.getAttribute("userBean");	
			if(userBean==null)
				response.sendRedirect("login.jsp");			
			String oldpassword=request.getParameter("oldpassword");
			String newpassword=request.getParameter("newpassword");
			logger.info("Change Password for Username:"+userBean.getLoginId()+"oldpasword"+oldpassword+"newpassword"+newpassword);
			ChangePasswordBean changepasswordBean=new ChangePasswordBean(userBean.getUsername(),RSA.encrypt(oldpassword),RSA.encrypt(newpassword));
			PrintWriter pw=response.getWriter();
			boolean result=LoginDao.getChangePassword(changepasswordBean);
			if(result)
			{
				pw.println("Password Changed Successfully");
			}
			else
			{
				pw.println("Please Enter Old Password Correctly");
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}
