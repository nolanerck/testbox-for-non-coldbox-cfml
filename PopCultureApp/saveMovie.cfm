<cfinclude template="./model/incMovies.cfm" />

<cfset saveMovie( form.MovieID, form.Title, form.rating ) />

<cflocation url="listMovies.cfm" addtoken="false" />