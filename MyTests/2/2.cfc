component displayName="My First Test - BDD style" extends="testbox.system.BaseSpec" 
{
    function run() 
    {
        describe("A spec (with setup and tear-down)", function() 
        {
            beforeEach( function( currentSpec ) 
            {
                WriteOutput( "NREDEBUG beforeEach..." );
                favoriteColor = "green";
            });


            WriteOutput( "NREDEBUG testing..." );
        });
    }

}