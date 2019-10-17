component displayName="My First Test - BDD style" extends="testbox.system.BaseSpec" 
{
	include "/PopCultureApp/inc/datasourceconfig.cfm";
	include "/PopCultureApp/model/incMovies.cfm";

    function run() 
    {
        describe( "Movie Rating filters need to work", function() 
        {
            beforeEach( function( currentSpec ) 
            {
				WriteOutput( "NREDEBUG beforeEach..." );
				
            });

			it( "can filter movies based on rating", function() {
				var qryNewMovie = saveMovie( 2, "Pink Panther", "FF" );

				// if my validation is working, this invalid rating
				// will get defaulted to 'PG'
				$assert.isTrue( ( qryNewMovie.rating eq "PG" ) );
			});

        });
    }

}