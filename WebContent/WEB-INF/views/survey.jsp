<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Surveys</title>
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
								<h1 class="pageTitle">SURVEYS</h1>
								<div class="row">
									<div class="col-md-3">
										<a href="modifySurvey">

											<h3 class="">Weekly Survey</h3>

										</a>
										<div class="col-md-6" style="float: left; padding: 0;">
											<a href="surveyprefs">Settings</a>
										</div>
										<div class="col-md-6"
											style="float: right; text-align: right; padding: 0;">
											<a href="javascript:deleteSurvey();">Delete</a>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
					<div>
						<a href="modifySurvey">Survey 1</a>
					</div>


				</div>
			</div>
		</div>
	</section>

	<script>
		function deleteSurvey() {
			alert("Are you sure you want to delete survey? This cannot be undone.");
		}
	</script>
</body>
</html>





