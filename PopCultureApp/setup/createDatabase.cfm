<cfdbinfo name="myResults" type="dbnames" datasource="#application.dsn#" />

<cfdump var="#myResults#" />

<cfdbinfo name="myTables" type="tables" dbname="db" datasource="#application.dsn#" />

<cfdump var="#myTables#" />

<cfquery datasource="#application.dsn#">
  DROP TABLE IF EXISTS tblDrummers;

  CREATE TABLE IF NOT EXISTS tblDrummers (DrummerID INT PRIMARY KEY, NAME VARCHAR(32), YearsExperience INT );

  INSERT INTO tblDrummers( DrummerID, NAME, YearsExperience ) VALUES( 1, 'Alex Van Halen', 10 );
  INSERT INTO tblDrummers( DrummerID, NAME, YearsExperience ) VALUES( 2, 'Ringo Starr', 35 );
  INSERT INTO tblDrummers( DrummerID, NAME, YearsExperience ) VALUES( 3, 'Buddy Rich', 50 );
  INSERT INTO tblDrummers( DrummerID, NAME, YearsExperience ) VALUES( 4, 'Tim Alexander', 22 );
  INSERT INTO tblDrummers( DrummerID, NAME, YearsExperience ) VALUES( 5, 'Chad Smith', 21 );
</cfquery>

<cfquery datasource="#application.dsn#" name="getDrummers">
  SELECT * 
  FROM tblDrummers
</cfquery>

<cfscript>
WriteDump( getDrummers );
</cfscript>

