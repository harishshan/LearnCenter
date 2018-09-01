<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.QuestionDao,com.exam.bean.PatternBean,com.exam.bean.CompanyBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Activate Pattern</title>
</head>
<body>
	<jsp:include page="adminheader.jsp"/>
	<div class="body2">
		<div class="main">
			<!-- content -->
			<section id="content">
				<div class="box1">
					<div class="wrapper">
						<article class="col1">
							<div class="pad_left1">
								<form method="post" action="activatepattern">
								<%
									ArrayList<CompanyBean> companyList = QuestionDao.getCompanyList();
									ArrayList<PatternBean> patternList = QuestionDao.getPatternList();
									Iterator<PatternBean> patternIterator = patternList.iterator();
									while (patternIterator.hasNext()) 
									{
										PatternBean pattern = patternIterator.next();
								%>
									<div class="wrapper">
										<br />
										<br />
										<div style="background-color: white; color: green;">
											<input type="radio" value="<%=pattern.getId()%>" name="patternid">
											<span style="background-color:silver;"><%=pattern.getName()%></span>
											<%
	 											Iterator<CompanyBean> companyIterator = companyList.iterator();
	 											while (companyIterator.hasNext()) 
	 											{
	 												CompanyBean company = companyIterator.next();
	 												if (pattern.getCompanyId() == company.getId()) 
	 												{
	 										%> 
	 										<span><b>Company : </b><%=company.getName()%></span> 
	 										<%
													}
												}
											%> 
											<span><b>Total Questions : </b><%=pattern.getTotalQuestion()%></span>
											<span><b>Maximum Time : </b><%=pattern.getMaxTimer()%></span>		
										</div>
										<input type="submit"/>
									</div>
								<%
									}
								%>									
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