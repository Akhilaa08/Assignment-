--SP to select all records of Music details

USE musicPlayerDB  
GO   

CREATE PROCEDURE [dbo].[USP_MusicAlbum_SelectALL]   
(   
@AlbumName VARCHAR(100) = ''   
)   
AS   
BEGIN   
SELECT MusicID,   
SingerName ,   
AlbumName ,   
MusicFileName,   
Description   
FROM MusicPlayerMaster   
WHERE   
AlbumName like @AlbumName +'%'   
  
END