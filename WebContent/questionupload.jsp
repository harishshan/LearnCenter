<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.QuestionDao,com.exam.bean.QuestionCategoryBean,com.exam.bean.CompanyBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Question Upload</title>
<script src="js/ckeditor.js"></script>
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
								<form id="AllForm" action="questionupload" method="post">
									<div class="wrapper">
										<div class="wrapper">
											Question:
											<textarea name="editor1" id="editor1" rows="3" cols="120"></textarea>
											<script type="text/javascript">
												CKEDITOR.replace('editor1');
											</script>
										</div>
										<br />
										<div class="wrapper">
											<div class="bg">
												Option A:<input type="text" name="optionA" size="80" />
											</div>
										</div>
										<div class="wrapper">
											<div class="bg">
												Option B:<input type="text" name="optionB" size="80" />
											</div>
										</div>
										<div class="wrapper">
											<div class="bg">
												Option C:<input type="text" name="optionC" size="80" />
											</div>
										</div>
										<div class="wrapper">
											<div class="bg">
												Option D:<input type="text" name="optionD" size="80" />
											</div>
										</div>

										<div class="wrapper">
											<strong>Answer:</strong>
											<div class="bg">
												<select name="answer">
													<option value="a">Option A</option>
													<option value="b">Option B</option>
													<option value="c">Option C</option>
													<option value="d">Option D</option>
												</select>
											</div>
											<strong>Company:</strong>
											<div class="bg">
												<select name="company">
													<%
														ArrayList<CompanyBean> companyList = (ArrayList<CompanyBean>) QuestionDao
																.getCompanyList();
														Iterator<CompanyBean> companyIterator1 = companyList.iterator();
														while (companyIterator1.hasNext()) {
															CompanyBean company = companyIterator1.next();
													%>
													<option value="<%=company.getId()%>"><%=company.getName()%></option>
													<%
														}
													%>
												</select>
											</div>
											<strong>Category:</strong>
											<div class="bg">
												<select name="category">
													<%
														ArrayList<QuestionCategoryBean> questionCategoryList = (ArrayList<QuestionCategoryBean>) QuestionDao
																.getCategoryList();
														Iterator<QuestionCategoryBean> questionCategoryIterator = questionCategoryList
																.iterator();
														while (questionCategoryIterator.hasNext()) {
															QuestionCategoryBean category = questionCategoryIterator.next();
													%>
													<option value="<%=category.getId()%>"><%=category.getName()%></option>
													<%
														}
													%>
												</select>
											</div>
											<div class="bg">
												<input type="submit" value="Submit Question" />
											</div>
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