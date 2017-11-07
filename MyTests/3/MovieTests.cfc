component displayName="Movie Tests - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		application.dsn = "myTestDSN2";

		include "/PopCultureApp/model/incMovies.cfm";
	}

    function testUpdatingMovieDBEntries() 
    {
    	var qryNewMovie = saveMovie( 2, "Test Movie", "R" );

    	$assert.isTrue( ( qryNewMovie.MovieID eq 2 ) );
    	$assert.isTrue( ( qryNewMovie.Title eq "Test Movie" ) );
    	$assert.isTrue( ( qryNewMovie.Rating eq "R" ) );
    }

    function testOnlyValidRatingsGetUsed()
    {
    	var qryNewMovie = saveMovie( 2, "Pink Panther", "FF" );

    	// if my validation is working, this invalid rating
    	// will get defaulted to 'PG'
    	$assert.isTrue( ( qryNewMovie.rating eq "PG" ) );
    }

	function teardown( currentMethod ) 
	{
		saveMovie( 2, "Sneakers", "PG-13" );
	}
}