<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.FeedbackDao,com.exam.bean.FeedbackBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  FeedBack</title>
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
								<%
									ArrayList<FeedbackBean> feedbackList = FeedbackDao.getFeedback();
									Iterator<FeedbackBean> feedbackIterator = feedbackList.iterator();
									while (feedbackIterator.hasNext()) 
									{
										FeedbackBean feedback = feedbackIterator.next();
								%>
								<div style="border-width: 1px; border-style:solid;border-color:#660000;border-radius:8px; color:green; 570px;">
									<div style="background-color: green; color: white;">
									<label><i>Commented by <%=feedback.getUsername()%></i>
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span style="align: right;"><b>at</b> <%=feedback.getDate()%></span>
									</div>
									<div style="width: 350px;">
										<b>Message:</b><textarea disabled="disabled"
											style="overflow: auto; width: 400px; height: 20px; background: none; padding: 5px; color: green;; font: 14px Tahoma, Geneva, sans-serif; margin: 0"><%=feedback.getMessage()%></textarea>										
									</div>
								</div>
								<div style="height: 3px"></div>
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