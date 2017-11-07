<cfinclude template="./model/incNewWaveBands.cfm" />


<cfoutput>
	<cf_HeaderAndFooter>
		<h2>Famous New Wave Bands</h2>

		<ol>
			<cfloop query="qryNewWaveBands">
				<li><a href="./bandDetails.cfm?BandID=#qryNewWaveBands.BandID#">#qryNewWaveBands.BandName#</a></li>
			</cfloop>
		</ol>
	</cf_HeaderAndFooter>
</cfoutput>
