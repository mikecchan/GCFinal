<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
<meta name="viewport" content="initial-scale=1, maximum-scale=1">

<link
	href="https://fonts.googleapis.com/css?family=Barlow+Condensed:400,500|Roboto:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="resources/css/style.css" type="text/css" rel="stylesheet">

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="resources/js/confovertime.js"></script>
<script src="resources/js/jobs_applied.js"></script>
<script src="resources/js/howConfident.js"></script>
<script src="resources/js/instructor.js"></script>
<script src="resources/js/what_make_conf.js"></script>
<script src="resources/js/material_pace.js"></script>
<script src="resources/js/teaching_technique.js"></script>
<script src="resources/js/T_Effectiveness.js"></script>
<script src="resources/js/watsontest.js"></script>

<script type="text/javascript">
	var getConf = ${getConf };
	var getJobsApp = ${getJobsApp };
	var getHowConf = ${getHowConf};
	var getIE = ${Instructor_el};
	var getWhatConf = ${WhatConf};
	var getMatPace = ${matPace};
	var getTT = ${TT_el};
	var getEf = ${E_el};
	var chartData = ${chartData};
	
	google.charts.load('current', {'packages':['bar']});
	google.charts.load('current', {'packages':['corechart']});
	
	google.charts.setOnLoadCallback(watsonBarTest);
	google.charts.setOnLoadCallback(confOverTime);
	google.charts.setOnLoadCallback(jobs_applied);
	google.charts.setOnLoadCallback(howConfident);
	google.charts.setOnLoadCallback(drawInstrEmo);
	google.charts.setOnLoadCallback(whatMakeConf);
	google.charts.setOnLoadCallback(drawMatPace);
	google.charts.setOnLoadCallback(drawTeachingTechnique);
	
	function makeBigger(that){
		that.className = "col-xs-12";
	}
</script>
</head>
<body>
	<%@ include file="dashHeader.jsp" %>
	<section id="main">
		<div class="container-db">
			<div class="row"> 
				<%@ include file="sideMenu.jsp" %>
				<div class="col-md-10 content" style="overflow: scroll">
							
								<!-- Chart section -->
								<div class="row"> 
									<div class = "col-md-12 col-xs-12 col-lg-12">
										<h1 class="pageTitle">DASHBOARD</h1> 
									</div>
								</div>
								
								<div class="row"> 
									<div class = "col-md-12 col-xs-12 col-lg-12" >
										<div id="teacher_effect"></div>
									</div>
								</div>	
											
								<br>
									

								<div class="row">
									<div class = "col-xs-4 col-md-4 col-lg-4" >
										<div id="confovertime"></div>
									</div>
									<div class = "col-xs-4 col-md-4 col-lg-4" >
										<div id="howConfID"></div>
									</div>
									<div class = "col-xs-4 col-md-4 col-lg-4" >
										<div id="material_pace"></div>
									</div>	
								</div>
								<br>

								<div class="row">

									<div class = "col-xs-4 col-md-4 col-lg-4" ><div id="instruEmotions"></div></div>
									<div class = "col-xs-4 col-md-4 col-lg-4" ><div id="jobs_applied"></div></div>
									<div class = "col-xs-4 col-md-4 col-lg-4" ><div id="watsonTestChart"></div></div>
								</div>
								<br>
								<div class="row">
									<div class = "col-md-12 col-xs-12 col-lg-12"><div id="what_make_conf"></div></div>
								</div>
							</div>
				</div>
			<br>
		</div>
	</section>
	
	<br>
		<br>
		<br>
		<br>
		<br>


	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>

	<script>
	$('ul.nav li.dropdown').hover(function() {
		  $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeIn(100);
		}, function() {
		  $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeOut(100);
		});
	
	</script>
</body>

</html>
