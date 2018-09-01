<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.exam.dao.ArticleDao,com.exam.bean.ArticleBean,java.util.ArrayList,java.util.Iterator"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="UTF-8" />
<title>Learn Center  |  Articles</title>
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
									</div>
								</div>
							</div>
						</article>
						<article class="col2 pad_left2">
							<div class="pad_left1">
								<div>
									<div style="height: 5px;"></div>
									<a href="adminarticle.jsp"> <b><i>Create your own
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
								<a href="adminarticles.jsp?id=<%=art.getId()%>"><%=art.getTitle()%></a>
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