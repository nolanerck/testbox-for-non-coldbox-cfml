component displayName="Test with Mock MovieService" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		variables.$movieService = createMock( "PopCultureApp.model.MovieService" );
	}

    function testSomething() 
    {
		WriteDump( $movieService.getAllMovies() );
		abort;
	}
	
	function teardown( currentMethod ) 
	{
		// teardown work after tests are completed...
	}
}