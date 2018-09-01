<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.bean.QuestionBean,com.exam.bean.PatternBean,com.exam.bean.ScoreBean,java.util.ArrayList,java.util.Iterator,java.text.NumberFormat"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Auto Grade</title>
<script src="js/ckeditor.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="body2">
		<div class="main">
			<!-- content -->
			<section id="content">
				<div class="box1">
					<div class="wrapper">
						<div class="pad_left1">
							<%
								PatternBean pattern=(PatternBean)session.getAttribute("pattern");
								if(pattern.isDisplayAnswer())
								{
									ArrayList<QuestionBean> questionList=(ArrayList<QuestionBean>)session.getAttribute("questionlist");
							%>
									<br>
									<br>
									<table style="border-width: 1; border-color: green;">
										<tr style="color: white; background-color: green; text-align: center; font-weight: bold; border: 1px;">
											<td>Q. No.</td>
											<td>Question</td>
											<td>Correct Answer</td>
											<td>User Answer</td>
										</tr>
										<%
											for(int i=0;i<questionList.size();i++)
											{
												QuestionBean question=questionList.get(i);
												int questionnumber=i+1;
										%>
										<tr style="color: green;">
											<td>
												<%=questionnumber%>
											</td>
											<td>
												<div>
													<%=question.getQuestion()%>
												</div>
												<div>
													Option A:<%=question.getOptionA()%>
												</div>
												<div>
													Option B:<%=question.getOptionB()%>
												</div>
												<div>
													Option C:<%=question.getOptionC()%>
												</div>
												<div>
													Option D:<%=question.getOptionD()%>
												</div>
											</td>
											<td style="text-align: center;">
												<%=question.getAnswer()%>
											</td>
											<td style="text-align: center;">
												<%=question.getUserAnswer()==null?"":question.getUserAnswer()%>
											</td>
										</tr>		
										<%
											}
										%>
									</table>
							<%
								}								
								if(pattern.isDisplayResult())
								{
									ScoreBean scoreBean=(ScoreBean)session.getAttribute("scoreBean");
									NumberFormat nf = NumberFormat.getInstance();
								    nf.setMaximumFractionDigits(2);
								   	nf.setMinimumFractionDigits(2);
									
							%>
								<div style="color:green;text-transform: uppercase;text-shadow: black;">
									<b>
										<table align="center">
											<tr><td>Total Questions</td><td>:<%=scoreBean.getTotalQuestions() %></td></tr>
											<tr><td>Number Of Questions Answered</td><td>:<%=scoreBean.getAnsweredQuestion() %></td></tr>
											<tr><td>Number of Question Correctly Answered</td><td>:<%=scoreBean.getCorrectAnswered() %></td></tr>
											<tr><td>Number of Question Wrongly Answered</td><td>:<%=scoreBean.getWrongAnswered() %></td></tr>
											<tr><td>Total Score Secured</td><td>:<%=nf.format(scoreBean.getScoreObtained())%></td></tr>
											<tr><td>Result</td><td>:<%=scoreBean.isResult()?"Pass":"Fail" %></td></tr>							 																									
										</table>
									</b>
								</div>
							<%									
								}
								else
								{
							%>
							Thanks For Attending Exam. Result will be published Soon	
							<%	
								}							
							%>
						</div>
					</div>
				</div>
			</section>
			<!-- content -->
		</div>
	</div>
</body>
</html>