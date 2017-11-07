<cfif IsDefined( "form.bandID" )>
	<!--- Saving a band from the form post --->
	<cfquery name="qrySaveBand" datasource="#application.dsn#">
		UPDATE tblMusicGroups
		   SET BandName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.bandName#" />,
		       Genre    = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Genre#" />
		 WHERE BandID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.BandID#" />
	</cfquery>

<cfelseif IsDefined( "url.BandID" )>
	<cfquery name="qryBandDetails" datasource="#application.dsn#">
		SELECT *
		FROM tblMusicGroups
		WHERE BandID = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.BandID#" />
	</cfquery>
<cfelse>
	<cfquery name="qryNewWaveBands" datasource="#application.dsn#">
		SELECT *
		FROM tblMusicGroups
		WHERE Genre = 'New Wave'
		ORDER BY BandName
	</cfquery>
</cfif>
