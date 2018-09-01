<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Article</title>
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
						<div class="pad_left1">
							<br />
							<h3>Article</h3>
							<form action="article" method="post" id="AllForm">
								Title:
								<div class="wrapper">
									<div class="bg">
										<input type="text" name="title" class="input" />
									</div>
								</div>
								<textarea name="editor1" id="editor1" rows="10" cols="80">
                						This is my textarea to be replaced with CKEditor.
            						</textarea>
								<script type="text/javascript">
									CKEDITOR.replace('editor1');
								</script>
								<div style="text-align: right;">
									<input type="submit" value="Submit Article" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
			<!-- content -->
		</div>
	</div>
</body>
</html>