component displayName="Drummer Tests - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		application.dsn = "myTestDSN2";

		include "/PopCultureApp/model/incDrummers.cfm";
	}

    function testUpdatingDrummerDBEntries() 
    {
    	var qryDrummer = saveDrummer( 2, "Tre Cool", 15 );

    	$assert.isTrue( ( qryDrummer.DrummerID eq 2 ) );
    	$assert.isTrue( ( qryDrummer.Name eq "Tre Cool" ) );
    	$assert.isTrue( ( qryDrummer.YearsExperience eq 15 ) );
    }

    function testNoNegativeYearsExperience() 
    {
    	var qryDrummer = saveDrummer( 2, "Ringo Starr", -99 );

    	$assert.isTrue( ( qryDrummer.yearsExperience eq 0 ) );
    }

	function teardown( currentMethod ) 
	{
		saveDrummer( 2, 'Ringo Starr', 35 );
	}
}