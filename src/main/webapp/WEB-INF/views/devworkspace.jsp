<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<meta charset="utf-8"/>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	    <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href="resources/css/bootstrap.min.css" rel="stylesheet"/>
		<link href="resources/css/style.css" rel="stylesheet"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/lib/jquery.ntm/js/jquery.ntm.js"></script>
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="resources/lib/jquery.ntm/themes/default/css/theme.css" />
	<script type="text/javascript">
		$(document).ready(function() {
			$('.demo').ntm();
		});
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
			<div class="row panel panel-default" style="background-color:#e6f2ff; padding:3px;">
				<div class="col-md-4">
					${datetime}
				</div>
				<div class="col-md-3 col-md-offset-5" >
					Welcome ${storedUser.firstName}, &nbsp;&nbsp;<a href="${pageContext.request.contextPath}?logout">Logout&nbsp;&nbsp;<img src="resources/images/logout.png" width="16px"/> </a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="wrapper">
					  <div class="tree-menu demo" id="tree-menu">
						<ul>
						  <li><a href="#">Problem Management</a>
								<ul>
								  <li><a href="#">Lookup</a></li>
								  <li><a href="#">List</a></li>
								</ul>
						   </li>
						   <li><a href="#">Solution Management</a>
								<ul>
								  <li><a href="#">Create</a></li>
								  <li><a href="#">Lookup</a></li>
								  <li><a href="#">List</a></li>
								  <li><a href="#">Update</a></li>
								</ul>
							</li>
							<li><a href="#">Contact</a>
								<ul>
								  <li><a href="#">Non-tech user</a></li>
								  <li><a href="#">Developer</a></li>
								  <li><a href="#">Administrator</a></li>
								</ul>
							</li>
							<li><a href="#">My Profile</a></li>
						</ul>
					  </div>
					</div>
				</div>
				<div class="col-md-4" >
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px; font-size:11px;">
						<fieldset>
							<legend>At a glance</legend>
							<span>Solutions:&nbsp;&nbsp;<a href="">17</a></span><br>
							<span>Accepted:&nbsp;&nbsp;<a href="">10 </a></span><br>
							<span>Declined:&nbsp;&nbsp;<a href="">7</a></span><br>
						</fieldset>
					</div>
				</div>
				<div class="col-md-5">
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px;">
						<fieldset>
							<legend>Quality</legend>
							<table class="table" style="font-size:10px; width:350px;">
								<tr>
									<th>SID</th>
									<th>Secure</th>
									<th>Reusable</th>
									<th>Maintainable</th>
									<th>Extendable</th>
								</tr>
								<tr>
									<td>2980</td>
									<td><img src="resources/images/star.png"/></td>
									<td></td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
								</tr>
								<tr>
									<td>2710</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td></td>
								</tr>
								<tr>
									<td>3034</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td></td>
									<td><img src="resources/images/star.png"/></td>
								</tr>
							</table>
						</fieldset>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-4" >
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px;">
						<fieldset>
							<legend>Performance</legend>
							<table class="table" style="font-size:10px; width:270px;">
								<tr>
									<th>SID</th>
									<th>Efficient</th>
									<th>Accurate</th>
									<th>Execution Time</th>
								</tr>
								<tr>
									<td>2980</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td></td>
								</tr>
								<tr>
									<td>2710</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td></td>
								</tr>
								<tr>
									<td>3034</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
									<td></td>
								</tr>
							</table>
						</fieldset>
					</div>
				</div>
				<div class="col-md-5" >
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px;">
						<fieldset>
							<legend>Messages</legend>
							<table class="table" style="font-size:10px; width:300px;">
								<tr>
									<th>MID</th>
									<th>From</th>
									<th>Message</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>2314</td>
									<td>A. Kaoui</td>
									<td>Need some help, let me know what time you will be available.</td>
									<td><a href=""><img src="resources/images/reply.png"/></a></td>
								</tr>
								<tr>
									<td>2315</td>
									<td>S. Seiaghi</td>
									<td>Need some help, let me know what time you will be available.</td>
									<td><a href=""><img src="resources/images/reply.png"/></a></td>
								</tr>
								<tr>
									<td>2316</td>
									<td>M. Kaoui</td>
									<td>Need some help, let me know what time you will be available.</td>
									<td><a href=""><img src="resources/images/reply.png"/></a></td>
								</tr>
								<tr>
									<td>2317</td>
									<td>A. Kaoui</td>
									<td>Need some help, let me know what time you will be available.</td>
									<td><a href=""><img src="resources/images/reply.png"/></a></td>
								</tr>
							</table>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>