component displayName="New Wave Band Tests - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		application.dsn = "myTestDSN2";
	}

    function testGettingBandDetails() 
    {
        url.bandID = 4;
        include "/PopCultureApp/model/incNewWaveBands.cfm";

    	$assert.isTrue( ( qryBandDetails.BandID eq 4 ) );
    	$assert.isTrue( ( qryBandDetails.BandName eq "The Human League" ) );
    	$assert.isTrue( ( qryBandDetails.Genre eq "New Wave" ) );
    }

    function testSavingChangestoBandInfo() 
    {
        form.bandID = 3;
        form.bandName = 'The Beatles';
        form.Genre = 'Brit Pop';

        include "/PopCultureApp/model/incNewWaveBands.cfm";

        StructDelete( form, "bandID" ); // remove that so the "other" branch in our cfinclude will run

        url.BandID = 3;

        include "/PopCultureApp/model/incNewWaveBands.cfm";

        $assert.isTrue( ( qryBandDetails.BandID eq 3 ) );
        $assert.isTrue( ( qryBandDetails.BandName eq "The Beatles" ) );
        $assert.isTrue( ( qryBandDetails.Genre eq "Brit Pop" ) );
    }

	function teardown( currentMethod ) 
	{
        // set the database entries back the way they were
        form.bandID = 3;
        form.bandName = 'Yaz';
        form.Genre = 'New Wave';

        include "/PopCultureApp/model/incNewWaveBands.cfm";
	}
}