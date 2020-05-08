component displayName="My First Test - xUnit style" extends="testbox.system.BaseSpec"
{
    function testHelloWorld() 
    {
		var myMessage = "Hello World";
		
        $assert.isTrue( myMessage contains "Hello" );
	}
	
 }