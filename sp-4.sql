--SP to Insert Music Details

USE musicPlayerDB  
GO   
  
--Insert MusicPlayerMaster records   

CREATE PROCEDURE [dbo].[USP_MusicAlbum_Insert]   
(   
@SingerName VARCHAR(100) = '',   
@AlbumName VARCHAR(200) = '',   
@MusicFileName VARCHAR(500) = '',   
@Description VARCHAR(100) = ''  
)   
AS   
BEGIN   
IF NOT EXISTS (SELECT * FROM MusicPlayerMaster WHERE MusicFileName=@MusicFileName)   
BEGIN   
  
INSERT INTO [dbo].[MusicPlayerMaster]  
(SingerName ,AlbumName ,MusicFileName ,Description)  
VALUES  
(@SingerName ,@AlbumName ,@MusicFileName ,@Description)  
  
Select 'Inserted' as results   
  
END   
ELSE   
BEGIN   
Select 'Exists' as results   
END   
  
END   