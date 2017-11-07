component displayName="Drummer Tests - xUnit style" extends="testbox.system.BaseSpec"
{
	function setup( currentMethod ) 
	{
		application.dsn = "myTestDSN2";

		include "/PopCultureApp/model/incDrummers.cfm";
	}

    function testNoNegativeYearsExperience() 
    {

    }

	function teardown( currentMethod ) 
	{

	}
}