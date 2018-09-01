<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.exam.bean.UserBean" session="true"%>
<%
	UserBean userBean=(UserBean)session.getAttribute("userBean");	
	if(userBean==null)
		response.sendRedirect("login.jsp");	
	else if(!userBean.getRole().equals("user"))
		response.sendRedirect("login.jsp");	
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center  |  HOME</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page1">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
            <li><a href="home.jsp">Home</a></li>            
            <li><a href="onlineexam.jsp">Online Exam</a></li>
            <li><a href="ebooks.jsp">E-Books</a></li>    
            <li><a href="articles.jsp">Articles</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li class="end"><a href="profile.jsp">Profile</a></li>
          </ul>
        </nav>        
      </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo">Learn Center</a></h1>      
      </div>
      <div id="slogan"> We Will Open The World<span>of knowledge for you!</span> </div>
      <ul class="banners">
        <!-- <li><a href="#"><img src="images/banner1.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/banner2.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/banner3.jpg" alt=""></a></li> -->
      </ul>
    </header>
    <!-- / header -->
  </div>
</div>

<script type="text/javascript">Cufon.now();</script>
</body>
</html>