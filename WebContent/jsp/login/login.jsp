<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="../../css/login/login.css">
</head>
<body>
	
	<div class='container'>
    <div class='login-container'>
    
      <div class='header'>
        <div class='header-name'>Punjabi Fashion</div>
        <div class='header-action'>Login</div>
      </div>
      <div class='google-button'>
        <button type="button" class="btn btn-gplus" ><i class="fa fa-google-plus pr-1"></i>&nbsp; Google +</button>
      </div>
      <hr>
      
      <form>
        
        <div class='form-group'>
          <input type='text' class='form-control' id='username' placeholder="Enter username" name='username' required>
        </div>
        <div class='form-group'>
            <input type="password" class="form-control" id="password" placeholder="Enter password" name="pwd" required>
        </div>
        <div class="row">
        	<div class="col-md-6">
        		<div class='form-display'>
            		<button type="submit" class="btn btn-primary" >Sign In</button>
        		</div>
        	</div>
        	<div class="col-md-6">
        		<div class='form-display'>
            		<button type="Reset" class="btn btn-primary" >Cancel</button>
        		</div>
        	</div>
        </div>
        
        
      </form>
      <div class='row '>
          <div class='col-md-4 link-left'>
              <a href='forget_password.jsp'>Forget Password?</a>
          </div>
          <div class='col-md-4 link-center'>
              <a href='/Git_Punjabi_Fashion/index.jsp'><span class="glyphicon glyphicon-arrow-left"> Back</span></a>
          </div>
          <div class='col-md-4 link-right'>
              <a href='signup.jsp'>Create an account</a>
          </div>
      </div>
      
    </div>
    
    </div>
    
</body>
</html>