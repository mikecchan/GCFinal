<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cohorts</title>
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

					<div class="row">
						<div class="main-pane">
							<div class="inner-div">
								<h1 class="pageTitle">Cohorts</h1>
							</div>



							<div class="panel-heading"></div>
							<div class="col-md-10">

								<div>
									<a href="addCohort">Add Cohort</a> <br> <br>
									<table class="table-striped table-bordered table-hover"
										cellspacing="10">
										<tr>
											<th>Class</th>
											<th>Semester</th>
											<th>Start Date</th>
											<th>Delete</th>
											<th>Update</th>
										</tr>
										<c:forEach var="myVar" items="${cohortID}" varStatus="status">
											<tr>

												<!-- <td>${myVar.cohortID}</td>-->
												<td>${myVar.cohortName}</td>
												<td>${myVar.cohortSemester}</td>
												<td>${myVar.startDate}</td>
												<td><a href="delete?id=${myVar.cohortID}"> Delete </a></td>
												<td><a
													href="updatecohortform?id=${myVar.cohortID}&cohortName=${myVar.cohortName}">
														Update </a></td>
											</tr>
										</c:forEach>

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

</html>