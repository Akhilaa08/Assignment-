--SP to Update Music Details

USE musicPlayerDB  
GO   
--Update all MusicPlayerMaster records   

Create PROCEDURE [dbo].[USP_MusicAlbum_Update]   
(   
@musicID VARCHAR(20) = '',   
@SingerName VARCHAR(100) = '',   
@AlbumName VARCHAR(200) = '',   
@MusicFileName VARCHAR(500) = '',   
@Description VARCHAR(100) = ''  
)   
AS   
BEGIN   
UPDATE [dbo].[MusicPlayerMaster]  
SET [SingerName] = @SingerName,  
[AlbumName] = @AlbumName,  
[MusicFileName] = @MusicFileName,  
[Description] = @Description   
WHERE   
musicID = @musicID   
Select 'Updated' as results   
END  
  