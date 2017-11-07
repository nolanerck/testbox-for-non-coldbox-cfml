<!--- In a real app, this data would come from a database via CFQuery.
	  For simplicity, this demo is just using a hand-crafted query.
	  The rest of the code can't really tell the difference. --->
<cffunction name="getAllDrummers" returntype="query">
	<cfset var qryGetDrummers = "" />

	<cfquery name="qryGetDrummers" datasource="#application.dsn#">
		SELECT *
		FROM tblDrummers
	</cfquery>

	<cfreturn qryGetDrummers />
</cffunction>

<cffunction name="saveDrummer" returntype="query">
	<cfargument name="newDrummerName" type="string" required="true" />

	<!--- CFQuery to do Insert/Update goes here. --->

	<!--- return the newly created record with a valid, unique, Primary key --->
</cffunction>