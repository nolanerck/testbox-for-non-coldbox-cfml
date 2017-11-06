<!--- In a real app, this data would come from a database via CFQuery.
	  For simplicity, this demo is just using a hand-crafted query.
	  The rest of the code can't really tell the difference. --->
<cffunction name="getAllDrummers" returntype="query">
	<cfset var qryDrummers = QueryNew( "DrummerID,Name" ) />

	<cfset queryAddRow( qryDrummers, { "DrummerID"=1, "Name"="Alex Van Halen" } ) />
	<cfset queryAddRow( qryDrummers, { "DrummerID"=2, "Name"="Ringo Starr" } ) />
	<cfset queryAddRow( qryDrummers, { "DrummerID"=3, "Name"="Buddy Rich" } ) />
	<cfset queryAddRow( qryDrummers, { "DrummerID"=4, "Name"="Tim Alexander" } ) />
	<cfset queryAddRow( qryDrummers, { "DrummerID"=5, "Name"="Chad Smith" } ) />

	<cfreturn qryDrummers />
</cffunction>