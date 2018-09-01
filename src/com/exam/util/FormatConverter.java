package com.exam.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;

public class FormatConverter
{
	private static final Logger logger = Logger.getLogger(FormatConverter.class);
	public static java.sql.Date getDate(String dateStr)
	{
		java.sql.Date sqlDate=null;
		try
		{
			logger.info("FormatConverter getDate DateString:"+dateStr+" Format:yyyy-mm-dd  Paring");
			DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date utilDate = formatter.parse(dateStr);
			sqlDate = new java.sql.Date(utilDate.getTime());			
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);			
		}
		return sqlDate;	
	}	
	public static boolean getBoolean(String booleanStr)
	{
		if(booleanStr.equalsIgnoreCase("on")|| booleanStr.equalsIgnoreCase("true"))
			return true;
		else
			return false;
	}
	public static double getDouble(String doubleStr)
	{
		double doubleValue=0;
		try
		{
			logger.info("FormatConverter getDouble DoubleString:"+doubleStr);
			doubleValue =Double.parseDouble(doubleStr);
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);			
		}
		return doubleValue;
	}
	public static int getInt(String intStr)
	{
		int intValue=0;
		try
		{
			logger.info("FormatConverter getInt IntString:"+intStr);
			intValue=Integer.parseInt(intStr);
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
		return intValue;
	}	
}