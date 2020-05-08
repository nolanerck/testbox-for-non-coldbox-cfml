component displayName="My First Test - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		Writeoutput( "<p>Setting up for the tests.</p>" );
		variables.favoriteColor = "green";
	}

    function testSomething() 
    {
    	Writeoutput( "<p>testing things...</p>" );
        var something = true;
        $assert.isTrue( something );
        $assert.isTrue( ( variables.favoriteColor eq "green" ) );
	}
	
    function testSomethingElse() 
    {
    	Writeoutput( "<p>testing other things...</p>" );
        $assert.isTrue( ( variables.favoriteColor eq "blue" ) );
    }

	function teardown( currentMethod ) 
	{
		WriteOutput( "<p>after the tests!</p>" );
	}
}