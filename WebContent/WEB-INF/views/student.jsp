<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
<meta name="viewport" content="initial-scale=1, maximum-scale=1">

<link
	href="https://fonts.googleapis.com/css?family=Barlow+Condensed:400,500|Roboto:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="resources/css/style.css" type="text/css" rel="stylesheet">



</head>
<body>

	<%@ include file="dashHeader.jsp"%>
	<section id="main">
		<div class="container-db">
			<div class="row">
				<%@ include file="sideMenu.jsp"%>
				<div class="col-md-10 content" style="overflow-y: scroll">

					<!-- <section id="breadcrumb">
						<div class="container ">
							<ol class="breadcrumb">
								<li class="">Dashboard</li>
							</ol>
						</div>
					</section>-->

					<div class="row">
						<div class="main-pane">
							<div class="inner-div">
								<h1 class="pageTitle">Students</h1>
							</div>
							<div class="panel-heading"></div>
							<div class="col-xs-2 col-md-2 col-lg-2 panel-body">
								<div>
									<div class="dropdown pull-right">
										<form action="result" method="post">
											<select id="cohortSelect" name="cohort"
												style="display: inline-block">
												<option value="All">All</option>
												<c:forEach var="cohort" items="${listcohorts}">
													<option value="${cohort}">${cohort}</option>
												</c:forEach>
												<input type="submit" style="display: inline-block"
												value="Search">
											</select>
										</form>

									</div>
									<table class="table-striped table-bordered table-hover">
										<a href="addperson">Add Person</a>
										<tr>
											<th></th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Email</th>
											<th>Location</th>
											<th>Cohort</th>
											<th>Delete</th>
											<th>Update</th>
										</tr>

										<tbody>

											<c:forEach var="myVar" items="${list}">
												<tr>
													<td></td>
													<td>${myVar.firstName}</td>
													<td>${myVar.lastName}</td>
													<td>${myVar.email}</td>
													<td>${myVar.location}</td>
													<td>${myVar.cohortID}</td>

													<td><a href="deleteperson?id=${myVar.personID}">
															Delete </a></td>
													<td><a href="addupdateperson?id=${myVar.personID}">
															Update </a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>