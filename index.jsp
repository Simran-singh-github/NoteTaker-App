<!doctype html>
<html lang="en">
  <head>
    
    <title>Note Taker : Home Page</title>
    
    <%@include file="all_js_css.jsp" %>
  </head>
  <body style="background:#bbdefb">
    
    <link rel="stylesheet" href="css/style.css" />
    
    <div class="container">
    	<%@include file="navbar.jsp" %>
    	<br>
    	
    	<div class="card py-5">
    		<img alt="" class="img.fluid mx-auto" style="max-width:400px" src="img/notes.png" />
    		<h1 class="text-primary text-uppercase text-center mt-4">Start Taking Your Notes</h1>
    		
    		<div class="container text-center">
    			<button class="btn btn-outline-primary text-center">
    			<a class="nav-link" href="add_notes.jsp">Start Here</a></button>
    		</div>
    		
    	</div>
    	

    </div>

    
  </body>
</html>
