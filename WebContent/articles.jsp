<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.ArticleDao,com.exam.bean.ArticleBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Articles</title>
<script type="text/javascript">
	function rate(rating,articleid)
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
    			document.getElementById("yourrate").innerHTML=xmlhttp.responseText;
    		}
  		}
		xmlhttp.open("GET","rate?rate="+rating+"&articleid="+articleid,true);
		xmlhttp.send();
}
</script>
<link rel='stylesheet' type='text/css' href='css/ratingstyle.css'>
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
							<div class="pad_left1">
								<div class="wrapper">
									<div id="posting">
										<%
											String articleId = (String) request.getParameter("id");
											ArticleBean article = null;
											if (articleId == null) {
												article = ArticleDao.getArticle();
											} else {
												int id = Integer.parseInt(articleId);
												article = ArticleDao.getArticle(id);
											}
										%>
										<div
											style="background-color: green; color: white; border-radius: 2px;">
											<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TITLE:&nbsp;&nbsp;&nbsp;<%=article.getTitle()%></b>
										</div>
										<div>
											<%=article.getArticleContent()%>
										</div>
										<span style="color: green;"> <b>Posted By</b> <i><%=article.getFirstName()%></i>
											<b>at </b> <i><%=article.getDate()%></i>
										</span>
										<fieldset class="rating">													
											<input type="radio" name="stars" id="4_stars" value="5" onclick="rate(5,<%=article.getId()%>)">
											<label class="stars" for="4_stars">5 stars</label>
											<input type="radio" name="stars" id="3_stars" value="4" onclick="rate(4,<%=article.getId()%>)">
											<label class="stars" for="3_stars">4 stars</label>
											<input type="radio" name="stars" id="2_stars" value="3" onclick="rate(3,<%=article.getId()%>)">
											<label class="stars" for="2_stars">3 stars</label>
											<input type="radio" name="stars" id="1_stars" value="2" onclick="rate(2,<%=article.getId()%>)">
											<label class="stars" for="1_stars">2 star</label>
											<input type="radio" name="stars" id="0_stars" value="1" required onclick="rate(1,<%=article.getId()%>)">
											<label class="stars" for="0_stars">1 star</label>
											<span  class="label">Rate This Article</span>																																			
										</fieldset>																	
									</div>
									<script>
										var rate=<%=article.getRate()%>-1;
										document.getElementById(rate+'_stars').setAttribute('checked','true');
									</script>
									<div id="yourrate" style="color: green;"></div>
								</div>
							</div>
						</article>
						<article class="col2 pad_left2">
							<div class="pad_left1">
								<div>
									<div style="height: 5px;"></div>
									<a href="article.jsp"> <b><i>Create your own
												Article</i></b>
									</a>
									<div style="height: 5px;"></div>
								</div>
								<h3>Articles</h3>
								<%
									ArrayList<ArticleBean> articleList = ArticleDao.getArticleList();
									Iterator<ArticleBean> articleIterator = articleList.iterator();
									while (articleIterator.hasNext()) {
										ArticleBean art = articleIterator.next();
								%>
								<a href="articles.jsp?id=<%=art.getId()%>"><%=art.getTitle()%></a>
								by
								<%=art.getFirstName()%><br />
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