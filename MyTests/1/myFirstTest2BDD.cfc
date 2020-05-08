/**
* My BDD Test
*/
component extends="testbox.system.BaseSpec"{
	
	/*********************************** LIFE CYCLE Methods ***********************************/
	
		// executes before all suites+specs in the run() method
		function beforeAll(){
			Writeoutput( "<p>Setting up for the tests.</p>" );
			variables.favoriteColor = "green";
		}
	
		// executes after all suites+specs in the run() method
		function afterAll(){
			WriteOutput( "<p>after the tests!</p>" );
		}
	
	/*********************************** BDD SUITES ***********************************/
	
		function run(){
		
			describe( "My first test Suite", function(){
				
				it( "should test something", function(){
					Writeoutput( "<p>testing things...</p>" );
					var something = true;

					expect( something ).toBeTrue();
					expect( variables.favoriteColor ).toBe( "green" );
				});
				
				it( "should test something else", function(){
					Writeoutput( "<p>testing other things...</p>" );
					expect( variables.favoriteColor eq "blue" ).toBeTrue();
				});
			});
		}
	}
	