<cfinclude template="./model/incDrummers.cfm" />

<cfset qryDrummers = getAllDrummers() />

<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Famous Drummers</h2>

		<ol>
			<cfloop query="qryDrummers">
				<li><a href="./drummerDetails.cfm?DrummerID=#qryDrummers.DrummerID#">#qryDrummers.name#</a></li>
			</cfloop>
		</ol>
	</cf_HeaderAndFooter>
</cfoutput>
