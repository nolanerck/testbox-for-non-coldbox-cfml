component displayName="My First Test - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		variables.favoriteColor = "green";
	}

    function testSomething() 
    {
    	Writeoutput( "testing things..." );
        var something = true;
        $assert.isTrue(something);
    }

	function teardown( currentMethod ) 
	{
		WriteOutput( "after after!" );
	}
}