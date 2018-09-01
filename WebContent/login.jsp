<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.exam.bean.UserBean"%>
<% session.removeAttribute("userBean"); %>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Login-Assessment System</title>
<link rel="stylesheet" type="text/css" href="css/indexstyle.css" />
</head>
<body>
	<form action="login" method="post">
		<h1>LOGIN</h1>
		<div class="inset">
			<p>
				<label for="email">USERNAME / REGISTRATION NUMBER</label> <input
					type="text" name="username" id="email">
			</p>
			<p>
				<label for="password">PASSWORD</label> <input type="password"
					name="password" id="password">
			</p>
		</div>
		<p class="p-container">
			<span> <a href="forgetpassword.jsp">Forgot password ?</a></span> <span>
				<a href="newuser.jsp">New User ?</a>
			</span> <input type="submit" name="go" id="go" value="Log in" />
		</p>
	</form>
</body>
</html>