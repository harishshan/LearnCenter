package com.exam.servlet;

import java.sql.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.exam.bean.NewUserBean;
import com.exam.dao.LoginDao;
import com.exam.util.FormatConverter;
import com.exam.util.RSA;

public class NewUser extends HttpServlet 
{
	private static final long serialVersionUID = 28483100971066804L;
	private static final Logger logger = Logger.getLogger(LoginDao.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			logger.info("NewUser Post");
			String firstName=request.getParameter("firstName");
			String registrationNumber=request.getParameter("registrationNumber");
			String password=request.getParameter("password");
			String encryptedPassword=RSA.decrypt(password);			
			String fatherName=request.getParameter("fatherName");
			String motherName=request.getParameter("motherName");
			String dobStr=request.getParameter("dob");
			String gender=request.getParameter("gender");
			String address=request.getParameter("address");
			String city=request.getParameter("city");
			String pincode=request.getParameter("pincode");
			String state=request.getParameter("state");
			String country=request.getParameter("country");
			String emailId=request.getParameter("emailId");
			String mobileNumber=request.getParameter("mobileNumber");
			String sslcPercentStr=request.getParameter("sslcPercent");
			String sslcSchool=request.getParameter("sslcSchool");
			String hscPercentStr=request.getParameter("hscPercent");
			String hscSchool=request.getParameter("hscSchool");
			String diplomaPercentStr=request.getParameter("diplomaPercent");
			String diplomaCollege=request.getParameter("diplomaCollege");
			String departmentIdStr=request.getParameter("departmentId");
			String batchIdStr=request.getParameter("batchId");
			String semester1Str=request.getParameter("semester1");
			String semester2Str=request.getParameter("semester2");
			String semester3Str=request.getParameter("semester3");
			String semester4Str=request.getParameter("semester4");
			String semester5Str=request.getParameter("semester5");
			String semester6Str=request.getParameter("semester6");
			String semester7Str=request.getParameter("semester7");
			String semester8Str=request.getParameter("semester8");
			String arrear=request.getParameter("arrear");
			String noOfArrearStr=request.getParameter("noOfArrear");
			
			Date dob=FormatConverter.getDate(dobStr);
			double sslcPercent=FormatConverter.getDouble(sslcPercentStr);
			double hscPercent=FormatConverter.getDouble(hscPercentStr);
			double diplomaPercent=FormatConverter.getDouble(diplomaPercentStr);
			double semester1=FormatConverter.getDouble(semester1Str);
			double semester2=FormatConverter.getDouble(semester2Str);
			double semester3=FormatConverter.getDouble(semester3Str);
			double semester4=FormatConverter.getDouble(semester4Str);
			double semester5=FormatConverter.getDouble(semester5Str);
			double semester6=FormatConverter.getDouble(semester6Str);
			double semester7=FormatConverter.getDouble(semester7Str);
			double semester8=FormatConverter.getDouble(semester8Str);
			int departmentId=FormatConverter.getInt(departmentIdStr);
			int batchId=FormatConverter.getInt(batchIdStr);
			int noOfArrear=FormatConverter.getInt(noOfArrearStr);
			NewUserBean newUserBean=new NewUserBean(firstName, registrationNumber, encryptedPassword, fatherName, motherName,dob, gender, address, city, pincode, state, country, emailId, mobileNumber, sslcPercent, sslcSchool, hscPercent, hscSchool, diplomaPercent, diplomaCollege, departmentId, batchId, semester1, semester2, semester3, semester4, semester5, semester6, semester7, semester8, arrear.equalsIgnoreCase("yes")?true:false, noOfArrear);
			LoginDao.insertUser(newUserBean);
			response.sendRedirect("login.jsp");
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
	}
}