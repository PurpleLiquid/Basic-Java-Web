<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.Date" %>
<!doctype html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	<title>Basic Java</title>
</head>

<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container-fluid">
			<ul class="navbar-nav me-auto mb-2">
				<li class="nav-item"><a class="nav-link" href="/textpage">TextPage</a></li>
				<li class="nav-item"><a class="nav-link" href="/form">Form</a></li>
				<li class="nav-item"><a class="nav-link" href="/calculator">Calculator</a></li>
			</ul>
			
		</div>
	</nav>
	
	<h3>Hello! Today is <%= new Date() %></h3>
	
	<!-- Optional JS -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
	
</body>
</html>
    