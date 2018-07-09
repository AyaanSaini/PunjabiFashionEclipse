<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="../../css/login/signup.css">
</head>
<body>
<div class='container'>
<div class='signup-container'>
<div class="close"><a href="/Git_punjabi_Fashion/index.jsp"><span class="glyphicon glyphicon-remove-sign"></span></a></div>

  <div class='header'>
    <div class='header-name'>Punjabi Fashion</div>
    <div class='header-action'>Signup</div>
  </div>
  <hr>
  
  <form action="${pageContext.request.contextPath}/Signup" method="post">
    <div class='note'>**All the fields are mendatory**</div>
    <div class='form-group'>
        <input type="email" class="form-control" id='email' placeholder="Enter email"  name="email" required>
    </div>
    <div class='form-group'>
      <input type='text' class='form-control' id='username' placeholder="Enter username" name='username' required>
    </div>
    <div class='form-group'>
        <input type="password" class="form-control" id='pwd' pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter password" name="pwd" required>
    </div>
    <div class='form-group'>
        <input type="password" class="form-control" id='cnfpwd' pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Confirm password" name="cnf-pwd" required>
    </div>
    <div class='form-group'>
      <select name='question1' id='q1' class='form-control' required>
        <option disabled selected>----Select a question----</option>
        <option value='where were you born?'>where were you born?</option>
        <option value='whats the name of your first school?'>what's the name of your first school?</option>
        <option value='whats the name of your first pet?'>what's the name of your first pet?</option>
        <option value='whats your mothers maiden name?'>what's your mother's maiden name?</option>
        <option value='What is your favorite movie?'>What is your favorite movie?</option>
        <option value='What was the make of your first car?'>What was the make of your first car?</option>
        <option value='What is your favorite color?'>What is your favorite color?</option>
        <option value='When is your anniversary?'>When is your anniversary?</option>
        <option value='What is the name of your first grade teacher?'>What is the name of your first grade teacher?</option>
        <option value='what is your favorite social media website?'>what is your favorite social media website?</option>
      </select>
    </div>
    <div class='form-group'>
      <input type='text' class='form-control' id='ans1' placeholder="Enter answer" name='ans1' required>
    </div>
    <div class='form-group'>
      <select name='question2' id='q2' class='form-control'>
        <option disabled selected>----Select a question----</option>
        <option value='where were you born?'>where were you born?</option>
        <option value='whats the name of your first school?'>what's the name of your first school?</option>
        <option value='whats the name of your first pet?'>what's the name of your first pet?</option>
        <option value='whats your mothers maiden name?'>what's your mother's maiden name?</option>
        <option value='What is your favorite movie?'>What is your favorite movie?</option>
        <option value='What was the make of your first car?'>What was the make of your first car?</option>
        <option value='What is your favorite color?'>What is your favorite color?</option>
        <option value='When is your anniversary?'>When is your anniversary?</option>
        <option value='What is the name of your first grade teacher?'>What is the name of your first grade teacher?</option>
        <option value='what is your favorite social media website?'>what is your favorite social media website?</option>
      </select>
    </div>
    
    <div class='form-group'>
      <input type='text' class='form-control' id='ans2' placeholder="Enter answer" name='ans2' required>
    </div>
    <div class='message'>${param.message}</div>
    <div class='error'>${param.error}</div>
    <div class='form-display'>
    	<div class="row">
    		<div class="col-md-6">
    			<button type="submit" class="btn btn-primary"  >Signup</button>
    		</div>
    		<div class="col-md-6">
    			<button type="reset" class="btn btn-primary" >Cancel</button>
    		</div>
    	</div>
    </div>
    
  </form>

</div>

</div>
</body>
</html>