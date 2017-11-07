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

<cffunction name="getDrummerDetails" returntype="query">
	<cfargument name="DrummerID" type="numeric" required="true">

	<cfset var qryDrummerDetails = "" />

	<cfquery name="qryDrummerDetails" datasource="#application.dsn#">
		SELECT *
		FROM tblDrummers
		WHERE DrummerID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.DrummerID#" />
	</cfquery>

	<cfreturn qryDrummerDetails />
</cffunction>

<cffunction name="saveDrummer" returntype="query">
	<cfargument name="newDrummerName" type="string" required="true" />

	<!--- CFQuery to do Insert/Update goes here. --->

	<!--- return the newly created record with a valid, unique, Primary key --->
</cffunction>