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
	<cfargument name="DrummerID" type="numeric" required="true" />
	<cfargument name="drummerName" type="string" required="true" />
	<cfargument name="yearsExp" type="numeric" required="true" />

	<cfset var qrySaveDrummer = "" />
	<cfset var qryDrummerDetails = "" />

	<!--- default any negative entries for experience to 0 --->
	<cfif arguments.yearsExp lt 0>
		<cfset arguments.yearsExp = 0 />
	</cfif>

	<cfquery name="qrySaveDrummer" datasource="#application.dsn#">
		UPDATE tblDrummers
		   SET name = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.drummerName#" />,
		       YearsExperience = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.yearsExp#" />
		WHERE DrummerID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.DrummerID#" />
	</cfquery>

	<!--- return the newly created record with a valid, unique, Primary key --->
	<cfquery name="qryDrummerDetails" datasource="#application.dsn#">
		SELECT *
		FROM tblDrummers
		WHERE DrummerID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.DrummerID#" />
	</cfquery>

	<cfreturn qryDrummerDetails />
</cffunction>