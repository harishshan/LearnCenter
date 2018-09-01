package com.exam.listener;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

public class ConnectionFactory implements ServletContextListener
{
	private static final Logger logger = Logger.getLogger(ConnectionFactory.class);
	private static Connection connection;	

	@Override
	public void contextDestroyed(ServletContextEvent sce) 
	{
		try
		{
			logger.info("ContextDestroyed  Closing Connection Object");
			connection.close();
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}		
	}	
	
	@Override
	public void contextInitialized(ServletContextEvent sce) 
	{
		   try
		   {
			   logger.info("ContextInitialized creating connection");
			   ServletContext sc=sce.getServletContext();
			   String dburl=sc.getInitParameter("dburl");
			   String username=sc.getInitParameter("username");
			   String password=sc.getInitParameter("password");
			   String driver=sc.getInitParameter("driver");
			   logger.debug("Database URL:"+dburl+" Username:"+username+" Password:"+password+" Driver"+driver);
			   Class.forName(driver);
			   connection = DriverManager.getConnection(dburl,username,password);
			   logger.debug("Connection Created");
		   }
		   catch(Exception e)
		   {
			   logger.error(e.toString(),e);
		   }
	}	
	
	public static Connection getConnection()
	{
		return connection;
	}	
}