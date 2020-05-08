/**
* My BDD Test
*/
component extends="testbox.system.BaseSpec"{
	
/*********************************** LIFE CYCLE Methods ***********************************/

	// executes before all suites+specs in the run() method
	function beforeAll(){
	}

	// executes after all suites+specs in the run() method
	function afterAll(){
	}

/*********************************** BDD SUITES ***********************************/

	function run(){
	
		describe( "My test Suite", function(){
			
			it( "should do something", function(){
                expect( false ).toBeTrue();
			});
			
			it( "should do something else", function(){
                expect( false ).toBeTrue();
			});
			
		});
		
	}
	
}
