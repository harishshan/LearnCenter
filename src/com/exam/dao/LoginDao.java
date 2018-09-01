package com.exam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.exam.bean.BatchBean;
import com.exam.bean.ChangePasswordBean;
import com.exam.bean.DepartmentBean;
import com.exam.bean.NewUserBean;
import com.exam.bean.UserBean;
import com.exam.listener.ConnectionFactory;

public class LoginDao 
{
	private static final Logger logger = Logger.getLogger(LoginDao.class);
	public static boolean getChangePassword(ChangePasswordBean changepasswordBean)
	{
		String oldpassword="";		 
		try
		{
			logger.info("LoginDao GetPassword Username:"+changepasswordBean.getUserName()+" Password:"+changepasswordBean.getOldpassword());
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select password from login where username='"+changepasswordBean.getUserName()+"' ";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			if(rs.next())
			{
				oldpassword=rs.getString(1);
				logger.info("oldpassword:"+oldpassword);				
			}
			rs.close();
			if(oldpassword.equals(changepasswordBean.getOldpassword()))
			{
				sqlQuery="update  login set password='"+changepasswordBean.getNewpassword()+"'where username='"+changepasswordBean.getUserName()+"' ";
				logger.info("SQLQuery:"+sqlQuery);
				st.executeUpdate(sqlQuery);
				logger.info("Password Changed");
				return true;
			}
			else
			{
				return false;
			}			
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
			return false;
		}
	}
	public static NewUserBean getCurrentUserBean(UserBean userBean)
	{
		NewUserBean newUserBean=null;
		try
		{
			logger.info("LoginDao getCurrentUserBean userBean:"+userBean);
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select userDetail.firstName,login.username,login.password,userdetail.FatherName,userdetail.MotherName,userdetail.DateOfBirth,userdetail.gender,contact.address,contact.city,contact.pincode,contact.state,contact.country,contact.emailId,contact.mobileNo,academic.SSLCPercent,academic.SSLCSchoolName,academic.HSCPercent,academic.HSCSchoolName,academic.DiplomaPercent,academic.DiplomaCollegeName,userdetail.DepartmentId,userdetail.BatchId,academic.Semester1,academic.Semester2,academic.Semester3,academic.Semester4,academic.Semester5,academic.Semester6,academic.Semester7,academic.Semester8,academic.Arrear,academic.NoOfArrears from login, userDetail,contact,academic where login.id=userDetail.LoginId and userdetail.AcademicId=academic.id and userdetail.ContactId=contact.id and login.id="+userBean.getLoginId();
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				newUserBean=new NewUserBean(rs.getString("userDetail.firstName"),rs.getString("login.username"),rs.getString("login.password"),rs.getString("userdetail.FatherName"),rs.getString("userdetail.MotherName"),rs.getDate("userdetail.DateOfBirth"),rs.getString("userdetail.gender"),rs.getString("contact.address"),rs.getString("contact.city"),rs.getString("contact.pincode"),rs.getString("contact.state"),rs.getString("contact.country"),rs.getString("contact.emailId"),rs.getString("contact.mobileNo"),rs.getDouble("academic.SSLCPercent"),rs.getString("academic.SSLCSchoolName"),rs.getDouble("academic.HSCPercent"),rs.getString("academic.HSCSchoolName"),rs.getDouble("academic.DiplomaPercent"),rs.getString("academic.DiplomaCollegeName"),rs.getInt("userdetail.DepartmentId"),rs.getInt("userdetail.BatchId"),rs.getDouble("academic.Semester1"),rs.getDouble("academic.Semester2"),rs.getDouble("academic.Semester3"),rs.getDouble("academic.Semester4"),rs.getDouble("academic.Semester5"),rs.getDouble("academic.Semester6"),rs.getDouble("academic.Semester7"),rs.getDouble("academic.Semester8"),rs.getBoolean("academic.Arrear"),rs.getInt("academic.NoOfArrears"));
			}			
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
		return newUserBean;
	}
	public static ArrayList<NewUserBean> getUserBeanList()
	{
		ArrayList<NewUserBean> newUserBeanList=new ArrayList<NewUserBean>();
		try
		{
			logger.info("LoginDao getUserBeanList");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select userDetail.firstName,login.username,login.password,userdetail.FatherName,userdetail.MotherName,userdetail.DateOfBirth,userdetail.gender,contact.address,contact.city,contact.pincode,contact.state,contact.country,contact.emailId,contact.mobileNo,academic.SSLCPercent,academic.SSLCSchoolName,academic.HSCPercent,academic.HSCSchoolName,academic.DiplomaPercent,academic.DiplomaCollegeName,userdetail.DepartmentId,userdetail.BatchId,academic.Semester1,academic.Semester2,academic.Semester3,academic.Semester4,academic.Semester5,academic.Semester6,academic.Semester7,academic.Semester8,academic.Arrear,academic.NoOfArrears from login, userDetail,contact,academic where login.id=userDetail.LoginId and userdetail.AcademicId=academic.id and userdetail.ContactId=contact.id";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				newUserBeanList.add(new NewUserBean(rs.getString("userDetail.firstName"),rs.getString("login.username"),rs.getString("login.password"),rs.getString("userdetail.FatherName"),rs.getString("userdetail.MotherName"),rs.getDate("userdetail.DateOfBirth"),rs.getString("userdetail.gender"),rs.getString("contact.address"),rs.getString("contact.city"),rs.getString("contact.pincode"),rs.getString("contact.state"),rs.getString("contact.country"),rs.getString("contact.emailId"),rs.getString("contact.mobileNo"),rs.getDouble("academic.SSLCPercent"),rs.getString("academic.SSLCSchoolName"),rs.getDouble("academic.HSCPercent"),rs.getString("academic.HSCSchoolName"),rs.getDouble("academic.DiplomaPercent"),rs.getString("academic.DiplomaCollegeName"),rs.getInt("userdetail.DepartmentId"),rs.getInt("userdetail.BatchId"),rs.getDouble("academic.Semester1"),rs.getDouble("academic.Semester2"),rs.getDouble("academic.Semester3"),rs.getDouble("academic.Semester4"),rs.getDouble("academic.Semester5"),rs.getDouble("academic.Semester6"),rs.getDouble("academic.Semester7"),rs.getDouble("academic.Semester8"),rs.getBoolean("academic.Arrear"),rs.getInt("academic.NoOfArrears")));
			}			
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
		return newUserBeanList;
	}
	public static UserBean getForgetPassword(UserBean userBean)
	{
		try
		{
			logger.info("LoginDao GetForgetPassword for Username:"+userBean);
			Connection connection=ConnectionFactory.getConnection();
			Statement statement=connection.createStatement();
			String sqlQuery="select password,emailid from login,userdetail,contact where login.username='"+userBean.getUsername()+"' and login.id=userdetail.loginid and userdetail.contactid=contact.id";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet resultset=statement.executeQuery(sqlQuery);
			while(resultset.next())
			{
				userBean.setPassword((String)resultset.getString("password"));				
				userBean.setEmailId((String)resultset.getString("emailid"));
			}
			logger.info("Retrieved UserBean"+userBean.toString());
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}
		return userBean;
	}
	public static void getLogin(UserBean userBean)
	{
		try
		{
			logger.info("LoginDao GetLogin Username:"+userBean.getUsername()+" Password:"+userBean.getPassword());
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,role from login where username='"+userBean.getUsername()+"' and password='"+userBean.getPassword()+"'";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				userBean.setLoginId((int)rs.getInt("id"));
				userBean.setRole((String)rs.getString("role"));				
			}
			logger.info("Retrieved UserBean"+userBean.toString());
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
	}	
	
	public static ArrayList<DepartmentBean> getDepartment()
	{
		ArrayList<DepartmentBean> departmentList=new ArrayList<DepartmentBean>();
		try
		{
			logger.info("LoginDao getDepartment");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name from department";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				departmentList.add(new DepartmentBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name")));			
			}			
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
		return departmentList;
	}
	public static ArrayList<BatchBean> getBatch()
	{
		ArrayList<BatchBean> batchList=new ArrayList<BatchBean>();
		try
		{
			logger.info("LoginDao getBatch");
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			String sqlQuery="select id,name from batch";
			logger.debug("SQLQuery:"+sqlQuery);
			ResultSet rs = st.executeQuery(sqlQuery);
			while(rs.next())
			{
				batchList.add(new BatchBean(new Integer((int)rs.getInt("id")), (String)rs.getString("name")));			
			}			
		}
		catch(Exception e)
		{
			logger.info(e.toString(),e);
		}
		return batchList;
	}
	public static void insertUser(NewUserBean newUserBean)
	{
		try
		{
			int studentId=0,academicId=0,contactId=0,userDetailId=0;
			logger.info("LoginDao InsertUser NewUserBean:"+newUserBean);
			Connection con=ConnectionFactory.getConnection();
			con.setAutoCommit(false);
			try
			{
				Statement st=con.createStatement();
			
			
				String sqlQuery="insert into login(username,password,role) values('"+newUserBean.getRegistrationNumber()+"','"+newUserBean.getPassword()+"','user')";
				logger.debug("SQLQuery:"+sqlQuery);
				st.executeUpdate(sqlQuery,Statement.RETURN_GENERATED_KEYS);
				ResultSet rs=st.getGeneratedKeys();
				if(rs.next())studentId=rs.getInt(1);
				rs.close();
				logger.info("LoginDao InsertUser Inserted into Login Table with Id:"+studentId);
				
				sqlQuery="insert into contact(emailId,mobileNo,address,city,pincode,state,country) values('"+newUserBean.getEmailId()+"','"+newUserBean.getMobileNumber()+"','"+newUserBean.getAddress()+"','"+newUserBean.getCity()+"','"+newUserBean.getPincode()+"','"+newUserBean.getState()+"','"+newUserBean.getCountry()+"')";
				logger.debug("SQLQuery:"+sqlQuery);
				st.executeUpdate(sqlQuery,Statement.RETURN_GENERATED_KEYS);
				rs=st.getGeneratedKeys();
				if(rs.next())
					contactId=rs.getInt(1);			
				rs.close();
				logger.info("LoginDao InsertUser Inserted into Contact Table with Id:"+contactId);
				
	
				sqlQuery="insert into academic(SSLCSchoolName,SSLCPercent,HSCSchoolName,HSCPercent,DiplomaCollegeName,DiplomaPercent,Semester1,Semester2,Semester3,Semester4,Semester5,Semester6,Semester7,Semester8,Arrear,NoOfArrears) values('"+newUserBean.getSslcSchool()+"',"+newUserBean.getSslcPercent()+",'"+newUserBean.getHscSchool()+"',"+newUserBean.getHscPercent()+",'"+newUserBean.getDiplomaCollege()+"',"+newUserBean.getDiplomaPercent()+","+newUserBean.getSemester1()+","+newUserBean.getSemester2()+","+newUserBean.getSemester3()+","+newUserBean.getSemester4()+","+newUserBean.getSemester5()+","+newUserBean.getSemester6()+","+newUserBean.getSemester7()+","+newUserBean.getSemester8()+","+newUserBean.isArrear()+","+newUserBean.getNoOfArrear()+")";			
				logger.debug("SQLQuery:"+sqlQuery);
				st.executeUpdate(sqlQuery,Statement.RETURN_GENERATED_KEYS);
				rs=st.getGeneratedKeys();
				if(rs.next())
					academicId=rs.getInt(1);
				rs.close();
				logger.info("LoginDao InsertUser Inserted into Academic Table with Id:"+academicId);
	
				sqlQuery="insert into userdetail(LoginId,FirstName,FatherName,MotherName,DateOfBirth,gender,ContactId,AcademicId,BatchId,DepartmentId) values(?,?,?,?,?,?,?,?,?,?)";
				logger.debug("SQLQuery:"+sqlQuery);
				PreparedStatement ptst=con.prepareStatement(sqlQuery, Statement.RETURN_GENERATED_KEYS);
				ptst.setInt(1,studentId);
				ptst.setString(2,newUserBean.getFirstName());
				ptst.setString(3,newUserBean.getFatherName());
				ptst.setString(4,newUserBean.getMotherName());
				ptst.setDate(5,newUserBean.getDob());
				ptst.setString(6, newUserBean.getGender());
				ptst.setInt(7, contactId);
				ptst.setInt(8, academicId);
				ptst.setInt(9,newUserBean.getBatchId());
				ptst.setInt(10, newUserBean.getDepartmentId());
				ptst.executeUpdate();
				rs=ptst.getGeneratedKeys();
				if(rs.next())
					userDetailId=rs.getInt(1);
				rs.close();
				con.commit();
				con.setAutoCommit(true);
				logger.info("LoginDao InsertUser Inserted into UserDetail Table with Id:"+userDetailId);
			}
			catch(SQLException e)
			{
				logger.error(e.toString(),e);
				logger.info("Roll Back Records");
				con.rollback();
			}
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}		
	}
}