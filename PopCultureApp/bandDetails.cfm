<cfinclude template="./model/incNewWaveBands.cfm" />

<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Band Details</h2>

		<form name="frmDetails" id="frmDetails" method="post" action="saveBand.cfm">

			<input type="hidden" name="BandID" id="BandID" value="#qryBandDetails.BandID#" />

			<div class="row">
				<div class="col-md-4 col-lg-4">
					<div class="form-group">
				    	<label for="name">Band Name:</label>
				    	<input type="text" class="form-control" id="BandName" name="BandName" value="#qryBandDetails.BandName#" />
				  	</div>

				</div>
			</div>

			<div class="row">
				<div class="col-md-4 col-lg-4">
					<div class="form-group">
				    	<label for="name">Genre:</label>
				    	<input type="text" class="form-control" id="Genre" name="Genre" value="#qryBandDetails.Genre#" />
				  	</div>

				</div>
			</div>

		  	<button type="submit" class="btn btn-default">Save</button>
		</form>

	</cf_HeaderAndFooter>
</cfoutput>