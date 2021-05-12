<%@ page import="java.util.Date" %>
<%@ include file="/includes/header.jsp" %>
<title>Home</title>
</head>

<body>
<%@ include file="/includes/navbar.jsp" %>

<div class="container py-4">
	<div class="h-100 p-5 bg-light border rounded-3">
		<h3>Hello! Today is <%= new Date() %></h3>
		<button class="btn btn-primary btn-lg" type="button">Press me for fun!</button>
	</div>
</div>

<%@ include file="/includes/footer.jsp" %>