<cfinclude template="./model/incDrummers.cfm" />

<cfset qryDetails = getDrummerDetails( url.DrummerID ) />

<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Drummer Details</h2>

		<form name="frmDetails" id="frmDetails" method="post" action="">

			<div class="form-group">
		    	<label for="name">Name:</label>
		    	<input type="text" class="form-control" id="name" value="#qryDetails.name#" />
		  	</div>

		  	<button type="submit" class="btn btn-default">Save Drummer</button>
		</form>

	</cf_HeaderAndFooter>
</cfoutput>