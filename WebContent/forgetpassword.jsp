<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center  |  Forget Password</title>
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
<script type="text/javascript">
	$(function() 
	{
		$('#forgetpassword').form(
		{
			success : function(data) 
			{
				$.messager.alert('Info', data, 'info');
			}
		});
	});
</script>
</head>
<body id="page1">
	<div class="body1">
		<div class="main">
			<!-- header -->
			<header>
				<br />
				<br />
				<div class="wrapper">
					<h1>
						<a href="home.jsp" id="logo">Learn Center</a>
					</h1>
				</div>
				<div id="slogan">
					We Will Open The World<span>of knowledge for you!</span>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<div class="wrapper">
					<h3 style="color: white;">Forget Password</h3>
					<form id="forgetpassword" action="forgetpassword" method="post">
						<strong style="color: white;">Username/Register Number:</strong> <input
							type="text" name="username"
							style="border-style: solid; border-width: thin;" /> <input
							type="submit" value="Request Password"
							style="border-style: solid; border-width: thin;" />
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