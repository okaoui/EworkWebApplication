<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta charset="utf-8"/>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	    <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href="resources/css/bootstrap.min.css" rel="stylesheet"/>
		<link href="resources/css/error.css" rel="stylesheet"/>
		<link href="resources/css/style.css" rel="stylesheet"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- JQuery dialogs -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.2.0/jquery-confirm.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.2.0/jquery-confirm.min.js"></script>
		
		<script type="text/javascript">
			var signup_msg = '${signup_message}';
			var login_msg = '${login_message}';
			if (signup_msg != null && signup_msg != '') {
				$.alert({
				    title: 'Message',
				    content: signup_msg,
				});
			}
			
			if (login_msg != null && login_msg != '') {
				$.alert({
				    title: 'Message',
				    content: login_msg,
				});
			}
		</script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="padding-top:10px;">
					<img src="resources/images/header.png" alt="header" width="100%">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h6><b>WORKTOGETHER</b></h6>
				</div>
				<div class="col-md-6">
				</div>
				<div class="col-md-3" style="position:relative; left: 60px;">
					<h6><b>WE CAN DO GOOD</b></h6>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4" >
					<div class="panel panel-info" style="background-color:#2f87d8; padding:10px;">
						<form class="form-group" method="POST" action="login">
							<fieldset>
								<legend class="cs_label"><small>Login:</small></legend>
								<div class="form-group" style="padding-bottom:12px;">
									<small><label for="username" class="cs_label">Username:</label></small>&nbsp;&nbsp;
									<small><input name="username" type="text" class="form-control" id="username" placeholder="username" required="required"/></small>
								</div>
								<div class="form-group">
									<small><label for="password" class="cs_label">Password:</label></small>&nbsp;&nbsp;
									<small><input name="password" type="password" class="form-control" id="password" placeholder="password" required="required"/></small>
									<a href="" class="cs_label">Can't remember?</a><br>
									<span class="cs_label">${logout}</span>
								</div> 
								</fieldset>	
								<small><input type="submit" class="cs_label cs_button" value="Login"/></small>	
						</form>
					</div>
					<div>
						<p><i><span style="font-size:20px;">W</span>elcome here, we created this platform thinking to bring together software
						developers and non-tech users, building solutions for problems that are created in our platform. For non-tech users,
						post your problem and choose the best solution that works for you. For problem-solving enthusiasts, 
						find problems that match your skillset and showcase your talent!  <br> Happy moments with us :)</i></p>
					</div>
				</div>
				<div class="col-md-1" >
				</div>
				<div class="col-md-7 panel panel-info" style="background-color:#2f87d8">
						<form class="form-group" method="POST" action="signup">
						<fieldset>
    						<legend class="cs_label"><small>Signup:</small></legend>
							<div class="form-group">
      							<small><label for="firstname" class="cs_label">Firstname:</label></small>&nbsp;&nbsp;
      							<small><input name="firstName" type="text" class="form-control" id="firstname" placeholder="your first name" required="required"/></small>
    						</div>
    						<div class="form-group">
      							<small><label for="lastname" class="cs_label">Lastname:</label></small>&nbsp;&nbsp;
      							<small><input name="lastName" type="text" class="form-control" id="lastname" placeholder="your last name" required="required"/></small>
    						</div>
    						<div class="form-group">
      							<small><label class="cs_label">Gender:</label></small>&nbsp;&nbsp;
      							<small><input type="radio" name="gender" value="male" required="required"/>&nbsp;<label class="cs_label">Male</label></small>&nbsp;&nbsp;
      							<small><input type="radio" name="gender" value="female" required="required"/>&nbsp;<label class="cs_label">Female</label></small>
    						</div>
    						<div class="form-group">
      							<small><label for="birthday" class="cs_label">Birthday:</label></small>&nbsp;&nbsp;
      							<small><input name="birthday" type="date" class="form-control" id="birthday" placeholder="your birthday" required="required"/></small>
    						</div>
    						<div class="form-group">
      							<small><label class="cs_label">Register as:</label></small>&nbsp;&nbsp;
      							<small><input type="radio" name="profile" value="nontech" required="required"/>&nbsp;<label class="cs_label">Non-tech user</label></small>&nbsp;&nbsp;
      							<small><input type="radio"  name="profile" value="developer" required="required"/>&nbsp;<label class="cs_label">Developer</label></small>
    						</div>
    						<div class="form-group">
      							<small><label for="occupation" class="cs_label">Occupation:</label></small>&nbsp;&nbsp;
      							<small><input type="text" name="occupation" class="form-control" id="occupation" placeholder="your occupation" required="required"/></small>
    						</div>
    						<div class="form-group">
      							<small><label for="email" class="cs_label">Email:</label></small>&nbsp;&nbsp;
      							<small><input type="email" name="email" class="form-control" id="email" placeholder="your@email.com" required="required"/></small>
    						</div> 
    						<div class="form-group">
      							<small><label for="mobile" class="cs_label">Mobile:</label></small>&nbsp;&nbsp;
      							<small><input type="text" name="mobile" class="form-control" id="mobile" placeholder="your mobile number" required="required"/></small>
    							
    						</div> 
    						</fieldset>	
    						<small><input type="submit" class="cs_label cs_button" value="Signup"/></small>	
						</form>
					</div>
			</div>
		</div>
	</body>
</html>