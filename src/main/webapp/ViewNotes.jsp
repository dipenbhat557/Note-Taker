<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Entities.*"%>
<%@ page import="java.util.*"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="org.hibernate.query.Query"%>
<%@ page import="com.Helper.FactoryProvider"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Notes Page</title>
<%@include file="allJsCss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="Navbar.jsp"%>
		<h1>All Notes :</h1>


		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();

				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top pl-4 pt-4 mx-auto"
						style="max-width: 100px" src="img/notepad.png">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p>
							<b> <%=note.getAddedDate()%>
							</b>
						</p>
						<div class="container text-center mt-2">
							<a href="DeleteNoteServlet?id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="Edit.jsp?id=<%=note.getId()%>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				<%
				}

				s.close();
				%>


			</div>
		</div>

	</div>
</body>
</html>