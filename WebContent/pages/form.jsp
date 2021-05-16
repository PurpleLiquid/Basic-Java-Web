<%@ include file="/includes/header.jsp" %>
<title>Form</title>
<link href="/BasicJavaWeb/css/form.css" rel="stylesheet">
</head>

<body>
<%@ include file="/includes/navbar.jsp" %>

<div class="container py-4">
	<div class="h-100 p-5 bg-light border rounded-3 text-center">
		<h1>${formReult}</h1>
	</div>
</div>

<main class="form-signin">

<form action="form" method="post">
<h1 class="h3 mb-3 fw-normal">Type Something Here</h1>

<div class="form-floating mb-3">
	<input type="text" class="form-control" name="formInput" id="floatingInput" placeholder="Text">
	<label for="floatingInput">Text</label>
</div>

<button class="w-100 btn btn-lg btn-primary" type="submit">Submit</button>
</form>
</main>
<%@ include file="/includes/footer.jsp" %>