<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background:#ffe0b2">
	<link rel="stylesheet" href="css/style.css" />

	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 style="text-align: center">ADD NOTES PAGE</h1>
		<br>
		
		<h2 style="text-align: center">PLEASE FILL YOUR NOTE DETAIL</h2>

		<!-- Forms..... -->
		<form action="saveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea name="content" required id="content" placeholder="Enter Your Content Here" class="form-control" style="height:200px"></textarea>
			</div>
			
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>
		
		<!-- end of form -->
	</div>
</body>
</html>