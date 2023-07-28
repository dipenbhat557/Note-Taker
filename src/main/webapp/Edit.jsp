<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.Entities.*"%>
<%@page import="com.Helper.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Note Page</title>

<%@include file="allJsCss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="Navbar.jsp"%>
		
		<h1>Edit your note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">
		<input value="<%=note.getId()%>" name="id" type="hidden">
			<div class="form-group">
				<label for="Title">Note Title</label> <input name="title"
					type="text" class="form-control" id="NoteTitle"
					placeholder="Enter note title" required value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="Content">Note Content</label>
				<textarea name="content" id="content" class="form-control"
					placeholder="Enter your content here" rows=6 required ><%=note.getContent()%></textarea>
			</div>
			<div class="container text-ceter">
				<button type="submit" class="btn btn-primary">Save note</button>
			</div>
		</form>
	</div>
</body>
</html>