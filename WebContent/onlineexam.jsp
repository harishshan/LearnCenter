<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
	import="com.exam.dao.QuestionDao,com.exam.bean.QuestionBean,com.exam.bean.PatternBean,com.exam.bean.SectionBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" charset="UTF-8" />
	<title>Learn Center | Online Exam</title>
	<script type="text/javascript">
		document.onmousedown=disableclick;			
		function disableclick(event)
		{
		  	if(event.button==2)
		   	{
		     	alert('Right Click Disabled');
		     	return false;    
		   	}
		}
		if(navigator.userAgent.search("Chrome") >= 0)
		{
			alert('Please dont open on Chrome');
		}
	</script>
</head>
<body oncontextmenu="return false">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="body2">
		<div class="main">
			<!-- content -->
			<section id="content">
				<div class="box1">
					<div class="wrapper">
						<article class="col1">
							<div class="pad_left1">
								<div style="text-align: right;" id="quiz-time-left"></div>
								<form method="post" name="quiz" id="quiz_form" action="onlineexam">
									<%
										ArrayList<QuestionBean> questionList=new ArrayList<QuestionBean>();
										PatternBean pattern=QuestionDao.getPattern();
										ArrayList<SectionBean> sectionList=pattern.getSectionList();					
										Iterator<SectionBean> sectionIterator=sectionList.iterator();
										for(int i=0;sectionIterator.hasNext();i++)
										{
											SectionBean section=sectionIterator.next();
											request.setAttribute("section"+i,section);												
											ArrayList<QuestionBean> sectionQuestionList=QuestionDao.getQuestionList(pattern.getCompanyId(),section.getCategoryId(),section.getTotalQuestion());
											questionList.addAll(sectionQuestionList);
										}
										session.setAttribute("questionlist",questionList);
										session.setAttribute("pattern",pattern);
										Iterator<QuestionBean> questionIterator=questionList.iterator();
										for(int i=1;questionIterator.hasNext();i++)
										{
											QuestionBean question=questionIterator.next();
									%>
									<div id="question<%=i%>"<%if(i!=1){%>style="display: none;" <%}%>>
										<div>
											<b>Question : <%=i%></b><%=question.getQuestion()%></div>
										<div>
											<input type="radio" value="a" name="<%=question.getId()%>" id="optionA<%=i%>" /><%=question.getOptionA()%></div>
										<div>
											<input type="radio" value="b" name="<%=question.getId()%>" id="optionB<%=i%>" /><%=question.getOptionB()%></div>
										<div>
											<input type="radio" value="c" name="<%=question.getId()%>" id="optionC<%=i%>" /><%=question.getOptionC()%></div>
										<div>
											<input type="radio" value="d" name="<%=question.getId()%>" id="optionD<%=i%>" /><%=question.getOptionD()%></div>
										<%
											if(i!=1)
											{
										%>
										<input type="button" value="Previous" onclick="previous(<%=i%>)">
										<%
											}
											if(i!=questionList.size())
											{
										%>
										<input type="button" value="Next / Answer" onclick="answer(<%=i%>)"> 
										<input type="button" value="Review" onclick="review(<%=i%>)">
										<%
											}
											else
											{
										%>
										<input type="submit" value="submit">
										<%
											}
										%>
									</div>
									<%
										}
									%>
								</form>
								<script type="text/javascript">
									var max_time = <%=pattern.getMaxTimer()%>;
									var c_seconds = 0;
									var total_seconds = 60 * max_time;
									max_time = parseInt(total_seconds / 60);
									c_seconds = parseInt(total_seconds % 60);
									document.getElementById("quiz-time-left").innerHTML = 'Time Left: '+ max_time + ' minutes ' + c_seconds + ' seconds';		
									function init() 
									{
										document.getElementById("quiz-time-left").innerHTML = 'Time Left: '	+ max_time + ' minutes ' + c_seconds + ' seconds';
										setTimeout("CheckTime()", 999);
									}
									function CheckTime() 
									{
										document.getElementById("quiz-time-left").innerHTML = 'Time Left: '	+ max_time + ' minutes ' + c_seconds + ' seconds';
										if (total_seconds <= 0) 
										{
											setTimeout('document.quiz.submit()', 1);	
										} 
										else 
										{
											total_seconds = total_seconds - 1;
											max_time = parseInt(total_seconds / 60);
											c_seconds = parseInt(total_seconds % 60);
											setTimeout("CheckTime()", 999);
										}	
									}
									init();
									function previous(i)
									{
										var j=i-1;
										document.getElementById('question'+i).setAttribute('style','display: none;');
										document.getElementById('question'+j).setAttribute('style','display: block');
									}		
									function answer(i)
									{
										var j=i+1;
										if((document.getElementById('optionA'+i).checked)||(document.getElementById('optionB'+i).checked)||(document.getElementById('optionC'+i).checked)||(document.getElementById('optionD'+i).checked))
										{
											document.getElementById('question'+i).setAttribute('style','display: none;');
											document.getElementById('question'+j).setAttribute('style','display: block');
											document.getElementById('qus'+i).setAttribute('style','color: green');
										}
										else
										{
											document.getElementById('question'+i).setAttribute('style','display: none;');
											document.getElementById('question'+j).setAttribute('style','display: block');
										}
									}
									function review(i)
									{
										var j=i+1;
										document.getElementById('question'+i).setAttribute('style','display: none;');
										document.getElementById('question'+j).setAttribute('style','display: block');
										document.getElementById('qus'+i).setAttribute('style','color: orange');
									}
									function gotoquestion(i,n)
									{
										for(j=1;j<=n;j++)
										{
											document.getElementById('question'+j).setAttribute('style','display: none;');													
										}
										document.getElementById('question'+i).setAttribute('style','display: block');
									}
									function finishpage()
									{
										alert("unload event detected!");
										document.quiz.submit();
									}
									window.onbeforeunload= function() 
									{
										setTimeout('document.quiz.submit()',1);
									};
								</script>								
							</div>
						</article>
						<article class="col2 pad_left2">
							<div class="pad_left1">
								<div>
									<b>
										<span style="color: blue;">Not Answered</span>&nbsp;&nbsp;&nbsp;
										<span style="color: green;">Answered</span>&nbsp;&nbsp;&nbsp;
										<span style="color: orange;">Review</span>
									</b>
								</div>
								<%
									for(int i=1;i<=questionList.size();i++)
									{
								%>
										<button style="color: blue;" id="qus<%=i%>" onclick="gotoquestion(<%=i%>,<%=questionList.size()%>)">
											Q<%=i%>
										</button>
								<%
									}
								%>
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