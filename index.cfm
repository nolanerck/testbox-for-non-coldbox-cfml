<cfinclude template="./PopCultureApp/inc/datasourceconfig.cfm" />

<cfset application.dsn = "myTestDSN2" />

<h2>The Stuff</h2>

<ul>
	<li><a href="./PopCultureApp/">Pop Culture App</a></li>
	<li><a href="./SlideDeck/">Slide Deck</a></li>
	
	<li>
		Tests
		<ul>
			<li><a href="./MyTests/1/myFirstTest.cfc?method=runremote">1. My First Test</a></li>
			<li><a href="./MyTests/1/myFirstTest2.cfc?method=runremote">1. My Second Test</a></li>
			<li><a href="./MyTests/1/myFirstTest2BDD.cfc?method=runremote">1. My First BDD Test</a></li>
			<li><a href="./MyTests/2/2.cfc?method=runremote">2. BDD Test example</a></li>
			<li><a href="./MyTests/2/2-1.cfc?method=runremote">2. BDD Test w/ CF Include</a></li>
			<li><a href="./MyTests/3/DrummerTests.cfc?method=runremote">3. Functions</a></li>
			<li><a href="./MyTests/3/MovieTests.cfc?method=runremote">3. Functions</a></li>
			<li><a href="./MyTests/4/NewWaveBandTests.cfc?method=runremote">4. Form posts</a></li>
			<li><a href="./MyTests/5-Mocks/tests-with-mockbox.cfc?method=runremote">5. Mocks</a></li>
			<li><a href="./MyTests/6-customTags/TestHeaderAndFooter.cfc?method=runremote">6. Custom Tags</a></li>
			<li><a href="./MyTests/ModelMigration/TestIncludeIntoModel.cfc.cfc?method=runremote">7. Components (sort of)</a></li>
		</ul>
	</li>
</ul>