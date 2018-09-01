<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.EBooksDao,com.exam.bean.EBooksCategoryBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Upload EBooks</title>
</head>
<body>
	<jsp:include page="adminheader.jsp"></jsp:include>
	<div class="body2">
		<div class="main">
			<!-- content -->
			<section id="content">
				<div class="box1">
					<div class="wrapper">
						<article class="col1">
							<div class="pad_left1">
								<h3>Upload File</h3>
								<form id="AllForm" action="uploadebooks" method="post" enctype="multipart/form-data">
									<span class="wrapper"> 
										<strong>File:</strong> 
										<span class="bg"> 
											<input type="file" class="input" name="upload"/>
										</span>
									</span>
									<span class="wrapper"> 
										<strong>Category:</strong> 
										<span class="bg"> 
											<select name="category">
												<option>--------SELECT--------</option>
												<%
														ArrayList<EBooksCategoryBean> ebooksCategoryList=(ArrayList<EBooksCategoryBean>)EBooksDao.getEBooksCategory();									
														Iterator<EBooksCategoryBean> ebooksCategoryIterator=ebooksCategoryList.iterator();
														while(ebooksCategoryIterator.hasNext())
														{
															EBooksCategoryBean category=ebooksCategoryIterator.next();
													%>
												<option value="<%=category.getId()%>"><%=category.getName()%></option>
												<%		
														}											
													%>
											</select>								
										</span>									
									</span>
									<span class="wrapper">
										<strong>Keyword</strong>
										<span class="bg">
											<input type="text" name="keyword"/>
										</span>
									</span> 
									<span class="wrapper"> 
										<span class="bg"> 
											<input type="submit" value="Upload"/>
										</span>
									</span>
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