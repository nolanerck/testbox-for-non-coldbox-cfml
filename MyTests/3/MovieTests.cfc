component displayName="Movie Tests - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		application.dsn = "myTestDSN2";

		include "/PopCultureApp/model/incMovies.cfm";
	}

    function testNoEmptyMovieTitles() 
    {
    	Writeoutput( "movie titles..." );
    	//include "/PopCultureApp/model/incMovies.cfm";
    	
    	var qryNewMovie = saveMovie( 2, "Test Movie", "R" );

    	$assert.isTrue( ( qryNewMovie.MovieID eq 2 ) );
    }

	function teardown( currentMethod ) 
	{
		WriteOutput( "after after!" );
	}
}