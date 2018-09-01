<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.exam.dao.EBooksDao,com.exam.bean.EBooksCategoryBean,com.exam.bean.EBooksBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Upload EBooks</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="body2">
		<div class="main">
			<!-- content -->
			<section id="content">
				<div class="box1">
					<div class="wrapper">
						<article class="col1">
							<div class="pad_left1">
								<div class="wrapper">
									<div class="wrapper">
										<%
											String keyword=request.getParameter("keyword");
											ArrayList<EBooksBean> booksList = EBooksDao.getEBooks(keyword);
											if(booksList.isEmpty())
											{
												%>
												Search result found nothing please change the keyword
												<%
											}
											else
											{
												Iterator<EBooksBean> booksIterator = booksList.iterator();
												while (booksIterator.hasNext())
												{
													EBooksBean currentBook = booksIterator.next();
										%>
										<br/>
										<a href="download?bookid=<%=currentBook.getId()%>">
											<%=currentBook.getPath().substring(currentBook.getPath().lastIndexOf("\\")+1) %>
										</a>
										<%
												}										
											}
										%>
									</div>	
								</div>								
							</div>							
						</article>
						<article class="col2 pad_left2">
            				<div class="pad_left1">
              					<br/>
              					<form action="searchebooks.jsp" method="post" id="AllForm">
              						<div class="wrapper">
              							<div class="bg">
											<input type="text" name="keyword"/><input type="submit" value="search"/>
										</div>
									</div>									
								</form>
            				</div>
          				</article>
					</div>
				</div>
			</section>
			<!-- content -->
		</div>
	</div>
</body>
</html>