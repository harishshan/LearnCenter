<%@page language="java" import="java.util.HashMap,java.util.Iterator,java.util.ArrayList,com.exam.bean.DepartmentBean,com.exam.bean.BatchBean,com.exam.dao.LoginDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center  |  New User</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/icon.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
</head>
<body id="page1">
	<div class="body1">
		<div class="main">
			<!-- header -->
			<header>
				<br /> <br />
				<div class="wrapper">
					<h1>
						<a href="home.jsp" id="logo">Learn Center</a>
					</h1>
				</div>
				<div class="wrapper" style="color:white;'">
					<h3 style="color: white;">New User Registration</h3>
					<form action="newuser" method="post">
						<table>
							<tr>
								<td>First Name</td>
								<td> : <input type="text" name="firstName" /></td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td>Registration Number</td>
								<td> : <input type="text" name="registrationNumber" /></td>								
							</tr>							
							<tr>
								<td>Password</td>
								<td> : <input type="password" name="password" /></td>
								<td></td>
								<td>Confirm Password</td>
								<td> : <input type="password" name="comfirmPassword" /></td>								
							</tr>
							<tr>
								<td>Father Name</td>
								<td> : <input type="text" name="fatherName"/></td>
								<td></td>
								<td>Mother Name</td>
								<td> : <input type="text" name="motherName"/></td>								
							</tr>
							<tr>
								<td>Date Of Birth</td>
								<td> : <input type="date" name="dob"></td>
								<td></td>
								<td>Gender</td>
								<td> : Male <input type="radio" name="gender" value="male"/> Female <input type="radio" name="gender" value="female"/></td>						
							</tr>
							<tr>
								<td>Address</td>
								<td colspan="4"> : <textarea rows="4" cols="60" name="address"></textarea></td>
							</tr>
							<tr>
								<td>City:</td>
								<td> : <input type="text" name="city"></td>
								<td></td>
								<td>Pincode:</td>
								<td> : <input type="number" name="pincode" min="100000"></td>
							</tr>
							<tr>
								<td>State:</td>
								<td> : <input type="text" name="state"></td>
								<td></td>
								<td>Country:</td>
								<td> : <input type="text" name="country"></td>								
							</tr>
							<tr>
								<td>Email ID</td>
								<td> : <input type="email" name="emailId"></td>
								<td></td>
								<td>Mobile number:</td>
								<td> : <input type="tel" name="mobileNumber"></td>								
							</tr>
							<tr>
								<td>SSLC %:</td>
								<td> : <input type="number" name="sslcPercent"/></td>
								<td></td>
								<td>SSLC School:</td>
								<td> : <input type="text" name="sslcSchool"></td>								 
							</tr>
							<tr>
								<td>HSC %:</td>
								<td> : <input type="text" name="hscPercent"></td>
								<td></td>
								<td>HSC School:</td>
								<td> : <input type="text" name="hscSchool"></td>								
							</tr>
							<tr>
								<td>Diploma %:</td>
								<td> : <input type="text" name="diplomaPercent"></td>
								<td></td>
								<td>Diploma College</td>
								<td> : <input type="text" name="diplomaCollege"></td>					
							</tr>
							<tr>
							<tr>
								<td>Department</td>
								<td> :
									<select name="departmentId">
										<option>--------SELECT--------</option>
										<%
											ArrayList<DepartmentBean> departmentList=(ArrayList<DepartmentBean>)LoginDao.getDepartment();																						
											Iterator<DepartmentBean> departmentIterator=departmentList.iterator();
											while(departmentIterator.hasNext())
											{
												DepartmentBean departmentBean=departmentIterator.next();
										%>
										<option value="<%=departmentBean.getId()%>"><%=departmentBean.getName()%></option>
										<%		
											}											
										%>																	
	 								</select>
	 							</td>
	 							<td></td>
	 							<td>Batch</td>
								<td> :
									<select name="batchId">
										<option>--------SELECT--------</option>
										<%
											ArrayList<BatchBean> batchList=(ArrayList<BatchBean>)LoginDao.getBatch();									
											Iterator<BatchBean> batchIterator=batchList.iterator();
											while(batchIterator.hasNext())
											{
												BatchBean batchBean=batchIterator.next();
										%>
										<option value="<%=batchBean.getId()%>"><%=batchBean.getName()%></option>
										<%		
											}											
										%>
									</select>
								</td>
	 						</tr>	 						
	 						<tr>								
								<td>Semester 1 : <input type="text" name="semester1" size="6"></td>
								<td>&nbsp;&nbsp;Semester 2 : <input type="text" name="semester2" size="6"></td>
								<td></td>
								<td>Semester 3 : <input type="text" name="semester3" size="6"></td>
								<td>&nbsp;&nbsp;Semester 4 : <input type="text" name="semester4" size="6"></td>
							</tr>
							<tr>
								<td>Semester 5 : <input type="text" name="semester5" size="6"></td>
								<td>&nbsp;&nbsp;Semester 6 : <input type="text" name="semester6" size="6"></td>
								<td></td>
								<td>Semester 7 : <input type="text" name="semester7" size="6"></td>
								<td>&nbsp;&nbsp;Semester 8 : <input type="text" name="semester8" size="6"></td>
							</tr>
							<tr>
								<td>History of Arrear</td>
								<td> :
									<select name="arrear">
										<option>--------SELECT--------</option>
										<option value="yes">YES</option>
										<option value="no">NO</option>
									</select>
								</td>
								<td></td>
								<td>Number of Arrear</td>
								<td> : <input type="number" name="noOfArrear" min="0" max="50"></td>
							</tr>
							<tr>
								<td colspan="5" align="right">
									<input type="submit" value="Register">									
								</td>
						</table>
					</form>
				</div>
			</header>
			<!-- / header -->
		</div>
	</div>
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>