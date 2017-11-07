<cfinclude template="./model/incDrummers.cfm" />

<cfset qryDetails = getDrummerDetails( url.DrummerID ) />

<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Drummer Details</h2>

		<form name="frmDetails" id="frmDetails" method="post" action="saveDrummer.cfm">

			<input type="hidden" name="DrummerID" id="DrummerID" value="#qryDetails.DrummerID#" />

			<div class="row">
				<div class="col-md-4 col-lg-4">
					<div class="form-group">
				    	<label for="name">Name:</label>
				    	<input type="text" class="form-control" id="name" name="name" value="#qryDetails.name#" />
				  	</div>

					<div class="form-group">
				    	<label for="YearsExperience">Years Experience:</label>
				    	<input type="number" class="form-control" id="YearsExperience" name="YearsExperience" value="#qryDetails.YearsExperience#" />
				  	</div>
				</div>
			</div>

		  	<button type="submit" class="btn btn-default">Save</button>
		</form>

	</cf_HeaderAndFooter>
</cfoutput>