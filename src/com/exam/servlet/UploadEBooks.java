package com.exam.servlet;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;

import com.exam.bean.EBooksBean;
import com.exam.dao.EBooksDao;
import com.exam.dao.LoginDao;
import com.exam.util.FormatConverter;

public class UploadEBooks extends HttpServlet
{
	private static final long serialVersionUID = 1512678485512659822L;
	private static final Logger logger = Logger.getLogger(LoginDao.class);
	private File parentFolder;
	@Override
	public void init(ServletConfig config) throws ServletException
	{
		super.init(config);		
		String rootpath=config.getServletContext().getInitParameter("rootpath");
		parentFolder=new File(rootpath);
		if(!parentFolder.exists())
			parentFolder.mkdir();
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			logger.info("UploadEBooks Servlet");
			HashMap<String,String> requestMap=new HashMap<String,String>();
			
			ServletFileUpload sfu = new ServletFileUpload();
			FileItemIterator iter = sfu.getItemIterator(request);
			while (iter.hasNext())
			{
				final FileItemStream item = iter.next();
				String name = item.getFieldName();
				InputStream stream = item.openStream();
				if (item.isFormField())
				{
					String value=Streams.asString(stream);
					logger.info("Request Parameters Name:"+name+" Value:"+value);
					requestMap.put(name,value);
				}
				else
				{
					String fileName = item.getName();
					if (fileName != null && !"".equals(fileName.trim()))
					{
						File uploadFile=new File(parentFolder.getPath()+File.separator+fileName);
						logger.info("File Received:"+fileName+ "Upload at:"+uploadFile.getAbsolutePath());
						FileOutputStream fos=new FileOutputStream(uploadFile);
						BufferedOutputStream bos=new BufferedOutputStream(fos);
						IOUtils.copy(stream, bos);						
						bos.close();fos.close();
						requestMap.put(name,uploadFile.getAbsolutePath());						
						logger.info("File upload complete");						
					}
				}
			}
			if(requestMap.get("upload")!=null && requestMap.get("category")!=null&&(requestMap.get("keyword")!=null))
			{
				int categoryId=FormatConverter.getInt(requestMap.get("category"));
				String filepath=requestMap.get("upload").replace(":","*").replace("\\","\\\\").replace("*",":");
				EBooksBean ebooksBean=new EBooksBean(filepath,categoryId,requestMap.get("keyword"));
				EBooksDao.insertEBooks(ebooksBean);				
			}
			RequestDispatcher view=request.getRequestDispatcher("uploadebooks.jsp");
			view.forward(request, response);
		}
		catch(Exception e)
		{
			logger.error(e.toString(), e);
		}
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	{
		doPost(request, response);
	}
}