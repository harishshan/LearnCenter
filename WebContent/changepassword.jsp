<%@page language="java" import="com.exam.dao.LoginDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center  |  Change Password</title>

<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/themes/icon.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript"
	src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<script type="text/javascript">
	function validate()
	{
		var oldpassword=document.getElementById("oldpassword").value;
		var newpassword=document.getElementById("newpassword").value;
		var confirmpassword=document.getElementById("confirmpassword").value;
		if(oldpassword=='')
			alert('Enter Old Password');
		else if(newpassword=='')
			alert('Enter New Password');
		else if(confirmpassword=='')
			alert('Enter Confirm Password');
		else if(newpassword!=confirmpassword)
			alert('New Password and Confirm Password must be same');
		else if(newpassword.length<6)
			alert('New Password length should be minimum 6');
		else
		{
			var xmlhttp;
			if (window.XMLHttpRequest)
	  		{
	  			xmlhttp=new XMLHttpRequest();
	  		}
			else
	  		{
	  			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  		}
			xmlhttp.onreadystatechange=function()
	  		{
	  			if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    		{
	    			var response=xmlhttp.responseText;
	    			alert(response);
	    		}
	  		}
			xmlhttp.open("GET","changepassword?oldpassword="+oldpassword+"&newpassword="+newpassword,true);
			xmlhttp.send();
		}	
	}
	
</script>
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
				<div id="slogan">
					We Will Open The World<span>of knowledge for you!</span>
				</div>
				<br /> <br /> <br /> <br /> <br /> <br /> <br /> 		
				<div class="wrapper">
					<h3 style="color: white;">Change Password</h3>
					<form  action="changepassword" method="post" name="frm" class="AllForm">
						<table
							style="border-width: thin color: white;">							
							<tr>
								<td style="color:white;">Old Password</td>
								<td>: <input type="password" name="oldpassword" id="oldpassword"/>
								</td>
							</tr>
							<tr>
								<td style="color:white;">New Password</td>
								<td>: <input type="password" name="newpassword" id="newpassword"/>
								</td>
							</tr>
							<tr>
								<td style="color:white;">Confirm Password</td>
								<td>: <input type="password" name="confirmpassword" id="confirmpassword"/>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
								<input type="button" value="changepassword"  onclick="validate();" /></td>
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