<cfcomponent displayName="Test Site Header and Footer" extends="testbox.system.BaseSpec">

	<cffunction name="testSiteHeaderFooterCustomTag">

		<cfsavecontent variable="myTagOutput">
			<cfmodule template="/PopCultureApp/HeaderAndFooter.cfm" />
		</cfsavecontent>

		<cfset $assert.isTrue(  myTagOutput contains 'Pop Culture App Main Menu' ) />

	</cffunction>

	<cffunction name="testSiteHeaderFooterCustomTagPassingDataBackToCallingTemplate">

		<cfmodule template="/PopCultureApp/HeaderAndFooter.cfm" />

		<cfset $assert.isTrue(  headerTagRendered eq true ) />

	</cffunction>

</cfcomponent>
