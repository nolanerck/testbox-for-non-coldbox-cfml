<cfdbinfo name="myResults" type="dbnames" datasource="#application.dsn#" />

<cfdump var="#myResults#" />

<cfdbinfo name="myTables" type="tables" dbname="db" datasource="#application.dsn#" />

<cfdump var="#myTables#" />

<cfquery datasource="#application.dsn#">
  DROP TABLE IF EXISTS tblDrummers;

  CREATE TABLE IF NOT EXISTS tblDrummers (DrummerID INT PRIMARY KEY, NAME VARCHAR(32) );

  INSERT INTO tblDrummers( DrummerID, NAME ) VALUES( 1, 'Alex Van Halen' );
  INSERT INTO tblDrummers( DrummerID, NAME ) VALUES( 2, 'Ringo Starr' );
  INSERT INTO tblDrummers( DrummerID, NAME ) VALUES( 3, 'Buddy Rich' );
  INSERT INTO tblDrummers( DrummerID, NAME ) VALUES( 4, 'Tim Alexander' );
  INSERT INTO tblDrummers( DrummerID, NAME ) VALUES( 5, 'Chad Smith' );
</cfquery>

<cfquery datasource="#application.dsn#" name="getDrummers">
  SELECT * 
  FROM tblDrummers
</cfquery>

<cfscript>
WriteDump( getDrummers );
</cfscript>

