<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>punjabi fashion</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="index.css">
 <link rel="stylesheet" href="../../css/admin/home.css">
 <link rel="stylesheet" href="../../css/admin/addproduct.css">
 <link rel="stylesheet" href="../../css/admin/editproduct.css">
 <link rel="stylesheet" href="../../css/admin/deleteproduct.css">
 <script type="text/javascript">
 $(document).on('click', '.browse', function(){
	  var file = $(this).parent().parent().parent().find('.file');
	  file.trigger('click');
	});
	$(document).on('change', '.file', function(){
	  $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
	});
 </script>
</head>
<body >
<%@ include  file='/header.jsp' %>

	<div class="container">		
				<div class="menu-items">
						<li><a onclick = "addProduct()">Add A Product</a></li>
						<li><a onclick = "editProduct()">Update Product Details</a></li>
						<li><a onclick = "deleteProduct()">Remove Product From Market</a></li>
				</div>
	</div>	
		
		<div class="action-block">
			<div class="action-container">
			<%if(false){ %>
				<div class="action-display" id="addproduct">
					<%@ include file='./addproduct.jsp' %>
				</div>
			<%}else if(false){ %>
				<div class="action-display" id="editproduct">
					<%@ include file='./editproductdetails.jsp' %>	
				</div>
			<%}else if(true){ %>
				<div class="action-display" id="deleteproduct">
					<%@ include file='./deleteproduct.jsp' %>
				</div>
			<%} %>		
			</div>
		</div>
		
	


</body>
</html>