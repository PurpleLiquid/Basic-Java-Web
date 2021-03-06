<%@ include file="/includes/header.jsp" %>
<title>Calculator</title>
<link href="/BasicJavaWeb/css/calc.css" rel="stylesheet">
</head>

<body>
<%@ include file="/includes/navbar.jsp" %>

<div class="container py-4">
	<div class="h-100 p-5 bg-light border rounded-3">
		<h1>${calcResult}</h1>
	</div>
</div>

<main>
	<div class="container py-4">
	<form action="calculator" method="post">
		<!-- operations -->
		<div class="row mb-3">
		    <div class="col center-button">
		    	<button class="btn btn-info btn-lg button" type="submit" name="op" value="+">+</button>
		    </div>
		    <div class="col center-button">
		    	<button class="btn btn-info btn-lg button" type="submit" name="op" value="-">-</button>
		    </div>
		    <div class="col center-button">
		    	<button class="btn btn-info btn-lg button" type="submit" name="op" value="*">*</button>
		    </div>
		    <div class="col center-button">
		    	<button class="btn btn-info btn-lg button" type="submit" name="op" value="/">/</button>
		    </div>
	    </div>
	    <!-- 1, 2, 3 -->
		<div class="row mb-3">
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="1">1</button>
		    </div>
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="2">2</button>
		    </div>
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="3">3</button>
		    </div>
	    </div>
	    
	    <!-- 4, 5, 6 -->
	    <div class="row mb-3">
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="4">4</button>
		    </div>
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="5">5</button>
		    </div>
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="6">6</button>
		    </div>
	    </div>
	    
	    <!-- 7, 8, 9 -->
	    <div class="row mb-3">
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="7">7</button>
		    </div>
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="8">8</button>
		    </div>
		    <div class="col-4 center-button">
		    	<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="9">9</button>
		    </div>
	    </div>
	    
	    <!-- 0 -->
	    <div class="row mb-3">
	    	<div class="col-4">
		    </div>
	    	<div class="col-4 center-button">
	    		<button class="btn btn-secondary btn-lg button" type="submit" name="val" value="0">0</button>
	    	</div>
	    	<div class="col-4">
		    </div>
	    </div>
	    <!-- Calculate/Equals/Submit -->
	    <div class="row mb-3">
    		<button class="w-100 btn btn-lg btn-primary" type="submit" name="calculate" value="=">Calculate</button>
	    </div>
	</form>
	</div>
</main>

<%@ include file="/includes/footer.jsp" %>