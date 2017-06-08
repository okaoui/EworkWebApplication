<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8"/>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	    <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href="resources/css/bootstrap.min.css" rel="stylesheet"/>
		<link href="resources/css/style.css" rel="stylesheet"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/lib/jquery.ntm/js/jquery.ntm.js"></script>
	<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="resources/lib/jquery.ntm/themes/default/css/theme.css" />
	<script type="text/javascript">
		$(document).ready(function() {
			$('.demo').ntm();
		});
	</script>
	</head>
<body>
<div class="container" >
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
				<hr>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="wrapper">
					  <div class="tree-menu demo" id="tree-menu">
						<ul>
						  <li><a href="#">Problem Management</a>
								<ul>
								  <li><a href="#">Create</a></li>
								  <li><a href="#">Lookup</a></li>
								  <li><a href="#">List</a></li>
								  <li><a href="#">Update</a></li>
								  <li><a href="#">Cancel</a></li>
								</ul>
						   </li>
						   <li><a href="#">Solution Management</a>
								<ul>
								  <li><a href="#">List</a></li>
								  <li><a href="#">Lookup</a></li>
								  <li><a href="#">Performance</a></li>
								  <li><a href="#">Quality</a></li>
								</ul>
							</li>
							<li><a href="#">Contact</a>
								<ul>
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
							<span>Problems:&nbsp;&nbsp;<a href="">30</a></span><br>
							<span>Solved:&nbsp;&nbsp;<a href="">16</a></span><br>
							<span>Open:&nbsp;&nbsp;<a href="">8</a></span><br>
							<span>Canceled:&nbsp;&nbsp;<a href="">4</a></span><br>
						</fieldset>
					</div>
				</div>
				<div class="col-md-5">
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px;">
						<fieldset>
							<legend>Solved Problems</legend>
							<table class="table" style="font-size:10px; width:350px;">
								<tr>
									<th>PID</th>
									<th>Developer</th>
									<th>Performance</th>
									<th>Quality</th>
								</tr>
								<tr>
									<td>2980</td>
									<td>O.Kaoui</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
								</tr>
								<tr>
									<td>2710</td>
									<td>A.Kaoui</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
								</tr>
								<tr>
									<td>3034</td>
									<td>S.Schokran</td>
									<td><img src="resources/images/star.png"/></td>
									<td><img src="resources/images/star.png"/></td>
								</tr>
							</table>
						</fieldset>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-4" >
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px;">
						<fieldset>
							<legend>Pending Problems</legend>
							<table class="table" style="font-size:10px; width:270px;">
								<tr>
									<th>PID</th>
									<th>Solutions</th>
									<th>Closing Date</th>
								</tr>
								<tr>
									<td>2980</td>
									<td>6</td>
									<td>12/05/2017</td>
								</tr>
								<tr>
									<td>2710</td>
									<td>0</td>
									<td>04/05/2017</td>
								</tr>
								<tr>
									<td>3034</td>
									<td>19</td>
									<td>06/06/2017</td>
								</tr>
							</table>
						</fieldset>
					</div>
				</div>
				<div class="col-md-6" >
					<div class="panel panel-default" style="background-color:#e6f2ff; padding:10px;">
						<fieldset>
							<legend>Messages</legend>
							<table class="table" style="font-size:10px; width:420px;">
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