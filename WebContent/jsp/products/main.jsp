<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Punjabi Fashion</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="../../css/products/main.css">
 <link rel="stylesheet" href="../../css/products/display-products.css">
 <link rel="stylesheet" href="../../css/products/filter-products.css">
 <link rel="stylesheet" href="../../index.css">
</head>
<body>
	<%@ include file="../../header.jsp" %>
		<div class="main-container">
			<div class="row">
				<div class="col-md-2">
					<div class="filter-container">
						<%@ include file="filter.jsp" %>
					</div>
				</div>
				<div class="col-md-10">
					<div class="filter-Products-container">
						<%@ include file="displayProducts.jsp" %>
					</div>
				</div>
			</div>
		</div>
	<%@ include file="../../footer.jsp" %>
</body>
</html>