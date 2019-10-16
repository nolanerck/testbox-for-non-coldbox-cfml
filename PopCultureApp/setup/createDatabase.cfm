<cfdbinfo name="myResults" type="dbnames" datasource="#application.dsn#" />

<cfdump var="#myResults#" />

<cfdbinfo name="myTables" type="tables" dbname="db" datasource="#application.dsn#" />

<cfdump var="#myTables#" />

<cfquery datasource="#application.dsn#">
  DROP TABLE IF EXISTS tblDrummers;

  CREATE TABLE IF NOT EXISTS tblDrummers ( DrummerID INT PRIMARY KEY, NAME VARCHAR(32), YearsExperience INT );

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

<!--- Now for the Movies stuffs.... --->

<cfquery datasource="#application.dsn#">
  DROP TABLE IF EXISTS tblMovies;

  CREATE TABLE IF NOT EXISTS tblMovies ( MovieID INT PRIMARY KEY, Title VARCHAR(32), Rating VARCHAR(5) );

  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 1, 'The Breakfast Club', 'PG' );
  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 2, 'Sneakers', 'PG-13' );
  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 3, 'Top Gun', 'PG' );
  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 4, 'Labyrinth', 'G' );
  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 5, 'Clue', 'PG-13' );
  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 6, 'Singles', 'PG-13' );
  INSERT INTO tblMovies( MovieID, Title, Rating ) VALUES( 7, 'Rounders', 'R' );

</cfquery>

<cfquery datasource="#application.dsn#" name="getMovies">
  SELECT * 
  FROM tblMovies
</cfquery>

<cfscript>
WriteDump( getMovies );
</cfscript>

<cfquery datasource="#application.dsn#">
  DROP TABLE IF EXISTS tblMusicGroups;

  CREATE TABLE IF NOT EXISTS tblMusicGroups ( BandID INT PRIMARY KEY, BandName VARCHAR(32), Genre VARCHAR(25) );

  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 1, 'Depeche Mode', 'New Wave' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 2, 'Erasure', 'New Wave' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 3, 'Yaz', 'New Wave' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 4, 'The Human League', 'New Wave' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 5, 'Duran Duran', 'New Wave' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 6, '7 Seconds', 'Punk Rock' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 7, 'Black Flag', 'Punk Rock' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 8, 'The Germs', 'Punk Rock' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 9, 'The Weirdos', 'Punk Rock' );
  INSERT INTO tblMusicGroups( BandID, BandName, Genre ) VALUES( 10, 'The Knockoffs', 'Punk Rock' );
</cfquery>

<cfquery datasource="#application.dsn#" name="getBands">
  SELECT * 
  FROM tblMusicGroups
</cfquery>

<cfscript>
WriteDump( getBands );
</cfscript>