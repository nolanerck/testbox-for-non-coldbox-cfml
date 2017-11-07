<cfif thisTag.executionMode eq "start">
	<!DOCTYPE html>
	<html>
	<head>
		<title>Pop Culture App</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</head>
	<body>
		<nav class="navbar navbar-default">
        	<div class="container-fluid">
	          	<div class="navbar-header">
		            <a class="navbar-brand" href="#">Pop Culture App</a>
	          	</div>
				<div id="navbar" class="navbar-collapse collapse">
	            	<ul class="nav navbar-nav">
	              		<li class="active"><a href="./index.cfm">Home</a></li>
						<li><a href="./listMovies.cfm">Movies</a></li>
						<li><a href="./listDrummers.cfm">Drummers</a></li>
						<li><a href="./listNewWaveBands.cfm">New Wave Bands</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div><!--/.container-fluid -->
		</nav>
<cfelse>

	</body>
	</html>
</cfif>
