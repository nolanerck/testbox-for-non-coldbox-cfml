<cfscript>
this.datasources["myTestDSN2"]={
	  		class: 'org.h2.Driver'
            ,bundleName:"org.h2"
            ,bundleVersion:"1.3.172"
			,connectionString: 'jdbc:h2:#getDirectoryFromPath(getCurrentTemplatePath())#/datasource/db;MODE=MySQL'
		};

application.dsn = "myTestDSN2";

//application.dsn = "myH2dsn";    
</cfscript>
