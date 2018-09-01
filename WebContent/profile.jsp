<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.LoginDao,com.exam.bean.UserBean,com.exam.bean.DepartmentBean,com.exam.bean.BatchBean,com.exam.bean.NewUserBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Profile</title>
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
							<div class="bg">
								<br/>
								<%
									UserBean userBean=(UserBean)session.getAttribute("userBean");
									NewUserBean newUserBean=LoginDao.getCurrentUserBean(userBean);
									ArrayList<DepartmentBean> departmentList=(ArrayList<DepartmentBean>)LoginDao.getDepartment();																						
									Iterator<DepartmentBean> departmentIterator=departmentList.iterator();
									String departmentName=null;
									while(departmentIterator.hasNext())
									{
										DepartmentBean departmentBean=departmentIterator.next();
										if(departmentBean.getId()==newUserBean.getDepartmentId())
											departmentName=departmentBean.getName();
									}
									ArrayList<BatchBean> batchList=(ArrayList<BatchBean>)LoginDao.getBatch();																						
									Iterator<BatchBean> batchIterator=batchList.iterator();
									String batchName=null;
									while(batchIterator.hasNext())
									{
										BatchBean batchBean=batchIterator.next();
										if(batchBean.getId()==newUserBean.getBatchId())
											batchName=batchBean.getName();
									}
								 %>
								<table
									style="background-color: white border-style:double;">
									<tr style="background-color: green; color: white;">
										<td colspan="5" align="center">Profile</td>
									</tr>
									<tr>
										<td>Name</td>										
										<td>:<%=newUserBean.getFirstName() %></td>
									</tr>
									<tr>
									<td>Register No</td>									
									<td>:<%=newUserBean.getRegistrationNumber() %></td>
									</tr>
									<tr>
										<td>Department</td>
										<td>:<%=departmentName%></td>
									</tr>
									<tr>
										<td>Batch</td>
										<td>:<%=batchName%></td>
									</tr>
									<tr>
										<td>Father Name</td>										
										<td>:<%=newUserBean.getFatherName() %></td>
									</tr>
									<tr>
										<td>Mother Name</td>										
										<td>:<%=newUserBean.getMotherName() %></td>
									</tr>
									<tr>
										<td>Date of Birth</td>										
										<td>:<%=newUserBean.getDob() %></td>
									</tr>
									<tr>
										<td>Gender</td>										
										<td>:<%=newUserBean.getGender() %></td>
									</tr>
									<tr>
										<td>Address</td>
										<td>:<%=newUserBean.getAddress() %>,<br/> <%=newUserBean.getCity() %>-<%=newUserBean.getPincode() %>,<br/> <%=newUserBean.getState() %>,<%=newUserBean.getCountry() %></td>
									</tr>
									<tr>
										<td>E-Mail Id</td>
										<td>:<%=newUserBean.getEmailId() %></td>
									</tr>
									<tr>
										<td>Mobile No </td>
										<td>:<%=newUserBean.getMobileNumber() %></td>
									</tr>																		
									<tr>
										<td>SSLC</td>
										<td>Mark:<br/>School:</td><td><%=newUserBean.getSslcPercent()%><br/><%=newUserBean.getSslcSchool() %></td>
									</tr>
									<tr>
										<td>HSC</td>
										<td>Mark:<br/>School:</td><td><%=newUserBean.getHscPercent()%><br/><%=newUserBean.getHscSchool()%></td>										
									</tr>
									<tr>
										<td>Diploma</td>
										<td>Mark:<br/>College:</td><td><%=newUserBean.getDiplomaPercent()%><br/><%=newUserBean.getDiplomaCollege()%></td>
									</tr>
									<tr>
										<td>Current Academic</td>
										<td>I Sem : <%=newUserBean.getSemester1() %> <br>
											V Sem : <%=newUserBean.getSemester5() %> </td>
										<td>II Sem : <%=newUserBean.getSemester2() %> <br>
											VI Sem : <%=newUserBean.getSemester6() %> </td>
										<td>III Sem : <%=newUserBean.getSemester3() %> <br>
											VII Sem : <%=newUserBean.getSemester7() %> </td>
										<td> IV Sem : <%=newUserBean.getSemester4() %> <br>
											VIII Sem : <%=newUserBean.getSemester8() %> </td>
									</tr>
								</table>

							</div>
						</article>
						<article class="col2 pad_left2">
            				<div class="pad_left1">
            					<br/><a href="changepassword.jsp"><button>Change Password</button></a>
            					<br/><a href="viewmyresult.jsp"><button>View Result History</button></a>
            				</div>
            			</article>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>