package com.exam.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.exam.bean.EBooksBean;
import com.exam.dao.EBooksDao;
import com.exam.dao.LoginDao;
import com.exam.util.FormatConverter;

public class DownloadEBooks extends HttpServlet
{
	private static final long serialVersionUID = 1512678485512659822L;
	private static final Logger logger = Logger.getLogger(LoginDao.class);
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	{
		try
		{
			logger.info("UploadEBooks Servlet");
			String bookIdStr=request.getParameter("bookid");
			int bookId=FormatConverter.getInt(bookIdStr);
			EBooksBean ebook=EBooksDao.getEBook(bookId);
			if(ebook!=null)
			{
				
				File file=new File(ebook.getPath());
				if (ebook.getPath().endsWith("txt")){response.setContentType("text/plain");}
				else if (ebook.getPath().endsWith("htm")){response.setContentType("text/html");}
				else if (ebook.getPath().endsWith("html")){response.setContentType("text/html");}
				else if (ebook.getPath().endsWith("doc")){response.setContentType("application/msword");} 
				else if (ebook.getPath().endsWith("xls")){response.setContentType("application/vnd.ms-excel");} 
				else if (ebook.getPath().endsWith("pdf")){response.setContentType("application/pdf");} 
				else if (ebook.getPath().endsWith("ppt")){response.setContentType("application/ppt");} 
				else if (ebook.getPath().endsWith("gif")){response.setContentType("image/gif");} 
				else if (ebook.getPath().endsWith("zip")){response.setContentType("application/zip");}
				else if (ebook.getPath().endsWith("bmp")){response.setContentType("image/bmp");} 
				else if (ebook.getPath().endsWith("jpe")){response.setContentType("image/jpeg");} 
				else if (ebook.getPath().endsWith("jpg")){response.setContentType("image/jpeg");} 
				else if (ebook.getPath().endsWith("jpeg")){response.setContentType("image/jpeg");} 
				else if (ebook.getPath().endsWith("rtf")){response.setContentType("application/rtf");} 
				else if (ebook.getPath().endsWith("tiff")){response.setContentType("image/tiff");} 
				else if (ebook.getPath().endsWith("tif")){response.setContentType("image/tiff");} 
				else {response.setContentType( "application/octet-stream" );}
				String downloadFilename=ebook.getPath().substring(ebook.getPath().lastIndexOf("\\")).trim().replaceAll("[^a-zA-Z0-9]","_");				
				response.setHeader("Content-Disposition","attachment;filename="+downloadFilename);
				FileInputStream fis = new FileInputStream(file);
			 	int read=0;
				byte[] bytes = new byte[1024];
				OutputStream os = response.getOutputStream();
			 	while((read = fis.read(bytes))!= -1)
			 	{
					os.write(bytes, 0, read);
				}
				os.flush();
				os.close();	
				fis.close();
			}	
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
	}
}