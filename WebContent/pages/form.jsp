<%@ include file="/includes/header.jsp" %>
<title>Form</title>
</head>

<body class="text-center">
<%@ include file="/includes/navbar.jsp" %>
<main class="form-signin">
<form>
<h1 class="h3 mb-3 fw-normal">Type Something Here</h1>

<div class="form-floating mb-3">
	<input type="text" class="form-control" id="floatingInput" placeholder="type something here...">
	<label for="floatingInput">Text</label>
</div>

<button class="w-100 btn btn-lg btn-primary" type="submit">Submit</button>
</form>
</main>
<%@ include file="/includes/footer.jsp" %>