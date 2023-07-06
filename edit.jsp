<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body style="background:#a5d6a7">
	
	<link rel="stylesheet" href="css/style.css" />
    
    <div class="container">
    	<%@include file="navbar.jsp" %>
    	<h1 style=text-align:center>EDIT YOUR NOTE</h1>
    	<br>
    	
    	<%
    	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    	Session s = FactoryProvider.getFactory().openSession();
    	Note note = (Note)s.get(Note.class, noteId);
    	%>
    	
    	<!-- Forms..... -->
		<form action="updateServlet" method="post">
		
			<input value="<%=note.getId() %>" name="noteId" type="hidden" />
		
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here" value="<%=note.getTitle() %>" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea name="content" required id="content" placeholder="Enter Your Content Here"
				 class="form-control" style="height:200px"><%=note.getContent() %></textarea>
			</div>
			
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>
			
		</form>
		<!-- end of form -->
		
    </div>
    
</body>
</html>