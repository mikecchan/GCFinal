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
<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<link href="resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<%@ include file="dashHeader.jsp"%>
	<section id="main">
		<div class="container-db">
			<%@ include file="sideMenu.jsp"%>
				<div class="col-md-10 content">

					<!-- <section id="breadcrumb">
						<div class="container ">
							<ol class="breadcrumb">
								<li class="">Dashboard</li>
							</ol>
						</div>
					</section>
 -->

					<div class="row">
						<div class="main-pane">
							<div class="inner-div">
								
								${addPersonTitle} ${updatePersonTitle} ${addPersonAction}
								${updatePersonAction} <input type="hidden" name="id"
									value="${personID}"> First Name: <input type="text"
									name="firstname" required> <br> Last Name: <input
									type="text" name="lastname" required> <br>
								<!--  these additional attributes for min and step allow us to take in a double variable -->
								Email: <input type="text" min="1" step="any" name="email">
								<br> Location: <input type="text" min="1" step="any"
									name="location"> <br> Cohort ID: <input
									type="number" min="1" step="any" name="cohortid"> <br>
								${addPersonButton}${updatePersonButton}



							</div>
						</div>
					</div>


				</div>
			</div>
	</section>

</body>