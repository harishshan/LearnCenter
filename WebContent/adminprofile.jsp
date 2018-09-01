<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.LoginDao,com.exam.bean.UserBean,com.exam.bean.DepartmentBean,com.exam.bean.BatchBean,com.exam.bean.NewUserBean,java.util.ArrayList,java.util.Iterator,java.util.HashMap"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Profile</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/pdf.js"></script>
	<script type="text/javascript" src="js/basic.js"></script>
<script>
function printDiv()
{
  var divToPrint=document.getElementById('areaToPrint');
  newWin= window.open("");
  newWin.document.write(divToPrint.outerHTML);
  newWin.print();
  newWin.close();
}
function makepdf()
{
	var pdf = new jsPDF('p', 'pt', 'letter')
	, source = $('#areaToPrint')[0]
	, specialElementHandlers = {
		// element with id of "bypass" - jQuery style selector
		'#bypassme': function(element, renderer){
			// true = "handled elsewhere, bypass text extraction"
			return true
		}
	}

	margins = {
	    top: 80,
	    bottom: 60,
	    left: 40,
	    width: 522
	  };	  
	pdf.fromHTML(
	  	source // HTML string or DOM elem ref.
	  	, margins.left // x coord
	  	, margins.top // y coord
	  	, {
	  		'width': margins.width // max width of content on PDF
	  		, 'elementHandlers': specialElementHandlers
	  	},
	  	function (dispose) {	  	  
	        pdf.save('Report.pdf');
	      },
	  	margins
	  )

}
</script>
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
							<div class="bg" id="pdfdiv">
								<br/>
								<table border="1" id="areaToPrint">
									<tr>
										<td style="font-weight: bold"> Sl.no. </td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td style="font-weight: bold"> Personal Details </td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>										
										<td style="font-weight: bold"> Contact Details </td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td style="font-weight: bold"> Academic Details </td>						
									</tr>
								<%
									ArrayList<NewUserBean> newUserBeanList=LoginDao.getUserBeanList();
									ArrayList<DepartmentBean> departmentList=(ArrayList<DepartmentBean>)LoginDao.getDepartment();																						
									Iterator<DepartmentBean> departmentIterator=departmentList.iterator();
									HashMap<Integer,String> department=new HashMap<Integer,String>();
									while(departmentIterator.hasNext())
									{
										DepartmentBean departmentBean=departmentIterator.next();
										department.put(departmentBean.getId(), departmentBean.getName());
									}
									ArrayList<BatchBean> batchList=(ArrayList<BatchBean>)LoginDao.getBatch();																						
									Iterator<BatchBean> batchIterator=batchList.iterator();
									HashMap<Integer,String> batch=new HashMap<Integer,String>();
									while(batchIterator.hasNext())
									{
										BatchBean batchBean=batchIterator.next();
										batch.put(batchBean.getId(),batchBean.getName());
									}
									Iterator<NewUserBean> newUserBeanIterator=newUserBeanList.iterator();
									for(int i=1;newUserBeanIterator.hasNext();i++)
									{
										NewUserBean newUserBean=newUserBeanIterator.next();
								%>
									<tr>
										<td><%=i %></td>
										<td>&nbsp;&nbsp;</td>
										<td><table>
												<tr>
													<td style="font-weight: bold">First-Name</td>
													<td>:<%=newUserBean.getFirstName() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Register-Number</td>
													<td>:<%=newUserBean.getRegistrationNumber() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Department</td>
													<td>:<%=department.get(newUserBean.getDepartmentId())%></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Batch</td>
													<td>:<%=batch.get(newUserBean.getBatchId())%></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Father-Name</td>
													<td>:<%=newUserBean.getFatherName() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Mother-Name</td>
													<td>:<%=newUserBean.getMotherName() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Date-Of-Birth</td>
													<td>:<%=newUserBean.getDob() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Gender</td>
													<td>:<%=newUserBean.getGender() %></td>
												</tr>											
											</table>
										</td>
										<td>&nbsp;&nbsp;</td>
										<td>
											<table>
												<tr>
													<td style="font-weight: bold">Address</td>
													<td>:<%=newUserBean.getAddress() %><br><%=newUserBean.getCity() %>-<%=newUserBean.getPincode() %><br><%=newUserBean.getState() %>,<%=newUserBean.getCountry() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Mobile-No</td>
													<td>:<%=newUserBean.getMobileNumber() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Email-ID</td>
													<td>:<%=newUserBean.getEmailId() %></td>
												</tr>
											</table>
										</td>
										<td>&nbsp;&nbsp;</td>
										<td>
											<table>
												<tr>
													<td style="font-weight: bold">SSLC-%</td>
													<td>:<%=newUserBean.getSslcPercent() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">SSLC-School</td>
													<td>:<%=newUserBean.getSslcSchool() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">HSC-%</td>
													<td>:<%=newUserBean.getHscPercent() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">HSC-School</td>
													<td>:<%=newUserBean.getHscSchool() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">Diploma-%</td>
													<td>:<%=newUserBean.getDiplomaPercent() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">DiplomaCollege</td>
													<td>:<%=newUserBean.getDiplomaCollege() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">I-Sem</td>
													<td>:<%=newUserBean.getSemester1() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">II-Sem</td>
													<td>:<%=newUserBean.getSemester2() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">III-Sem</td>
													<td>:<%=newUserBean.getSemester3() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">IV-Sem</td>
													<td>:<%=newUserBean.getSemester4() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">V-Sem</td>
													<td>:<%=newUserBean.getSemester5() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">VI-Sem</td>
													<td>:<%=newUserBean.getSemester6() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">VII-Sem</td>
													<td>:<%=newUserBean.getSemester7() %></td>
												</tr>
												<tr>
													<td style="font-weight: bold">VIII-Sem</td>
													<td>:<%=newUserBean.getSemester8() %></td>
												<tr/>
												<tr>
													<td style="font-weight: bold">Arrear</td>
													<td>:<%=newUserBean.getNoOfArrear() %></td>
												</tr>
											</table>
									</tr>
								<%	
									}
								 %>
								</table>
								<input type="button" value="Print" onclick="printDiv();"/>
								<input type="button" value="PDF" onclick="makepdf();"/>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>