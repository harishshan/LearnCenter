package com.exam.util;

import java.io.IOException;
import java.util.Properties;

public class PropertiesReader 
{
	public static String readProperty(String key)
	{
		Properties properties = new Properties();
		try 
		{
			properties.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("Configuration.properties"));
		} 
		catch (IOException e) 
		{
			e.printStackTrace();
		}
		return properties.getProperty(key);
	}
}