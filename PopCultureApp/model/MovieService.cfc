<!--- The "model & business logic" for our Movies functionality. --->
<cfcomponent>

	<cfproperty name="dsn" type="string" />

	<cffunction name="init" returnType="any">
		<cfargument name="dsn" type="string" required="true" />

		<cfset variables.dsn = arguments.dsn />
		<crreturn this />
	</cffunction>

	<cffunction name="getAllMovies" returntype="query">
		<cfset var qryGetMovies = "" />

		<cfquery name="qryGetMovies" datasource="#variables.dsn#">
			SELECT *
			FROM tblMovies
		</cfquery>

		<cfreturn qryGetMovies />
	</cffunction>

	<cffunction name="getMovieDetails" returntype="query">
		<cfargument name="MovieID" type="numeric" required="true">

		<cfset var qryMovieDetails = "" />

		<cfquery name="qryMovieDetails" datasource="#variables.dsn#">
			SELECT *
			FROM tblMovies
			WHERE MovieID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.MovieID#" />
		</cfquery>

		<cfreturn qryMovieDetails />
	</cffunction>

	<cffunction name="saveMovie" returntype="query">
		<cfargument name="MovieID" type="numeric" required="true" />
		<cfargument name="Title" type="string" required="true" />
		<cfargument name="rating" type="string" required="true" />

		<cfset var qrySaveMovie = "" />
		<cfset var qryMovieDetails = "" />

		<!--- Make sure Rating is one of the valid entries. Default invalid entries to "PG" --->
		<cfset var lstValidRatings = "G,PG,PG-13,R" />
		<cfif not ListFind( lstValidRatings, arguments.rating )>
			<cfset arguments.rating = "PG" />
		</cfif>

		<cfquery name="qrySaveMovie" datasource="#variables.dsn#">
			UPDATE tblMovies
			SET Title = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Title#" />,
				Rating = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.rating#" />
			WHERE MovieID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.MovieID#" />
		</cfquery>

		<!--- return the newly created record with a valid, unique, Primary key --->
		<cfquery name="qryMovieDetails" datasource="#variables.dsn#">
			SELECT *
			FROM tblMovies
			WHERE MovieID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.MovieID#" />
		</cfquery>

		<cfreturn qryMovieDetails />
	</cffunction>

</cfcomponent>
