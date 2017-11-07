<cfinclude template="./model/incMovies.cfm" />

<cfset qryDetails = getMovieDetails( url.MovieID ) />

<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Movie Details</h2>

		<form name="frmDetails" id="frmDetails" method="post" action="saveMovie.cfm">

			<input type="hidden" name="MovieID" id="MovieID" value="#qryDetails.MovieID#" />

			<div class="row">
				<div class="col-md-4 col-lg-4">
					<div class="form-group">
				    	<label for="name">Title:</label>
				    	<input type="text" class="form-control" id="Title" name="Title" value="#qryDetails.Title#" />
				  	</div>

					<div class="form-group">
				    	<label for="rating">Rating:</label>
				    	<select name="rating" id="rating">
				    		<option value="G" <cfif qryDetails.rating eq "G">selected="selected"</cfif>>G</option>
				    		<option value="PG" <cfif qryDetails.rating eq "PG">selected="selected"</cfif>>PG</option>
				    		<option value="PG-13" <cfif qryDetails.rating eq "PG-13">selected="selected"</cfif>>PG-13</option>
				    		<option value="R" <cfif qryDetails.rating eq "R">selected="selected"</cfif>>R</option>
				    	</select>
				  	</div>
				</div>
			</div>

		  	<button type="submit" class="btn btn-default">Save</button>
		</form>

	</cf_HeaderAndFooter>
</cfoutput>