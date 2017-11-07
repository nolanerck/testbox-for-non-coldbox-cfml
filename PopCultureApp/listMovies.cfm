<cfinclude template="./model/incMovies.cfm" />

<cfset qryMovies = getAllMovies() />

<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Famous Movies</h2>

		<ol>
			<cfloop query="qryMovies">
				<li><a href="./movieDetails.cfm?MovieID=#qryMovies.MovieID#">#qryMovies.Title#</a></li>
			</cfloop>
		</ol>
	</cf_HeaderAndFooter>
</cfoutput>
