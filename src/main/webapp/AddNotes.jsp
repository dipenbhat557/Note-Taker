<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="allJsCss.jsp"%>

<title>Add Notes Page</title>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="Navbar.jsp"%>
		<h1>Please fill your note details</h1>
		<!-- This is add form -->

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="Title">Note Title</label> <input name="title" type="text"
					class="form-control" id="NoteTitle" placeholder="Enter note title" required>
			</div>
			<div class="form-group">
				<label for="Content">Note Content</label> <textarea name="content" id="content" class="form-control" placeholder="Enter your content here" rows=6 required></textarea>
			</div>
			<div class="container text-ceter">
			<button type="submit" class="btn btn-primary">Save</button>
		</div>
		</form>

	</div>


</body>
</html>
