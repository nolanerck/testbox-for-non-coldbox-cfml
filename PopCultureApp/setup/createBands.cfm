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