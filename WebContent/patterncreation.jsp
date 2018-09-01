<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.QuestionDao,com.exam.bean.QuestionCategoryBean,com.exam.bean.CompanyBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Pattern Creation</title>
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
								<h3>Pattern Creation</h3>
								<form id="AllForm" action="createpattern" method="post">
									<div class="wrapper">
										<div class="wrapper"> 
											<div class="bg"> Pattern
													Name:<input type="text" name="name" style="width: 250px;">
											</div>
										</div>
										<div class="wrapper"> 
											<div class="bg">
												Company:
												<select name="company"  style="width: 270px;">
													<%
														ArrayList<CompanyBean> companyList = (ArrayList<CompanyBean>) QuestionDao.getCompanyList();
														Iterator<CompanyBean> companyIterator1 = companyList.iterator();
														while (companyIterator1.hasNext()) 
														{
															CompanyBean company = companyIterator1.next();
													%>
													<option value="<%=company.getId()%>"><%=company.getName()%></option>
													<%
														}
													%>
												</select>
											</div>
										</div> 
										<div class="wrapper"> 
											<div class="bg">
												Negative Mark<input type="text" name="negativemark" style="width:190px;"/> / Question
											</div>
										</div> 
										<div class="wrapper"> 
											<div class="bg">
												Minimum Cut-off<input type="number" name="cuttoff" style="width: 200px;"/> Marks
											</div>
										</div> 
										<div class="wrapper"> 
											<div class="bg"> 
												Maximum Timer:<input type="number" name="timer" size="4" max="500" min="0" style="width:220px;" />sec.
											</div>
										</div>
										<div class="wrapper"> 
											<div class="bg"> 
												Total Question:<input type="number" name="totalquestion" size="4" max="500" min="0" style="width:250px;" />
											</div>
										</div>
										<div class="wrapper"> 
											<div class="bg"> 
												Display Result:
												ON <input type="radio" name="result" value="on" style="width: 90px;"/>
												OFF <input type="radio" name="result" value="off" style="width: 90px;"/>
											</div>
										</div> 
										<div class="wrapper"> 
											<div class="bg">
												Display Answer: 
												ON <input type="radio" name="answer" value="on" style="width: 80px;"/> 
												OFF <input type="radio" name="answer" value="off" style="width: 90px;"/>
											</div>
										</div> 
										<div class="wrapper"> 
											<div class="bg"> 
												Number Of Section(s)
												<select name="noofsection" id="select" style="width:200px;">
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</select>
											</div>
										</div>
										<div id="textbox_div"></div>
										<script>
											jQuery('#select').change(function()
											{
    											var val = jQuery(this).val();
    											var innerhtml = '';
    											for(var i = 1;i<=val;i++)
    											{		
    												var section="<b>Section"+i+"</b>";
        											var category = "<div class=\"wrapper\"><div class=\"bg\">Category<select name=\"category"+i+"\" style=\"width: 280px;\"><%ArrayList<QuestionCategoryBean> questionCategoryList = (ArrayList<QuestionCategoryBean>) QuestionDao.getCategoryList();Iterator<QuestionCategoryBean> questionCategoryIterator = questionCategoryList.iterator();while (questionCategoryIterator.hasNext()){QuestionCategoryBean category = questionCategoryIterator.next();%><option value=\"<%=category.getId()%>\"><%=category.getName()%></option><%}%></select></div></div> ";
        											var cutoff="<div class=\"wrapper\"><div class=\"bg\">Minimum Cut-off<input type=\"number\" name=\"cuttoff"+i+"\" style=\"width: 200px;\"/> Marks</div></div>";
        											var timer="<div class=\"wrapper\"><div class=\"bg\">Maximum Timer:<input type=\"number\" name=\"timer"+i+"\" size=\"4\" max=\"500\" min=\"0\" style=\"width:220px;\" />sec.</div></div>";
        											var totalquestion="<div class=\"wrapper\"><div class=\"bg\">Total Question:<input type=\"number\" name=\"totalquestion"+i+"\" size=\"4\" max=\"100\" min=\"0\" style=\"width:250px;\" /></div></div>";
        											innerhtml=innerhtml+section+category+cutoff+timer+totalquestion;
    											}
    											jQuery('#textbox_div').html(innerhtml);
											});
										</script>										
										<div class="wrapper" style="width: 100px;"> 
											<div class="bg"> 
												<input type="submit" value="Create Pattern" />
											</div>
										</div>
									</div>
								</form>
							</div>
						</article>
						<article class="col2 pad_left2">
            				<div class="pad_left1">
            					<br/><a href="activate.jsp"><button>Activate Pattern</button></a>
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