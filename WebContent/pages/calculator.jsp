<%@ include file="/includes/header.jsp" %>
<title>Calculator</title>
</head>

<body class="py-4">
<%@ include file="/includes/navbar.jsp" %>

<main>
	<div class="container py-4">
		<div class="h-100 p-5 bg-light border rounded-3">
			${calcResult}
		</div>
	
		<div class="row mb-3">
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="1">1</button>
		    </div>
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="2">2</button>
		    </div>
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="3">3</button>
		    </div>
	    </div>
	    
	    <div class="row mb-3">
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="4">4</button>
		    </div>
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="5">5</button>
		    </div>
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="6">6</button>
		    </div>
	    </div>
	    
	    <div class="row mb-3">
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="7">1</button>
		    </div>
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="8">2</button>
		    </div>
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="9">3</button>
		    </div>
	    </div>
	    
	    <div class="row mb-3">
		    <div class="col-4">
		    	<button class="btn btn-secondary btn-lg" type="button" value="0">0</button>
		    </div>
	    </div>
	    
	    <div class="row mb-3">
		    <div class="col-4">
		    	<button class="w-100 btn btn-lg btn-primary" type="submit">Calculate</button>
		    </div>
	    </div>
	</div>
</main>

<%@ include file="/includes/footer.jsp" %>