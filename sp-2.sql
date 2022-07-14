--SP to Insert Album Details.

USE MusicStore  
GO   
  
-- To insert  
-- EXEC [USP_Album_Insert] ''   
-- =============================================   
CREATE PROCEDURE [dbo].[USP_Album_Insert]   
(   
@AlbumName VARCHAR(200) = '',   
@ImageName VARCHAR(500) = ''  
)   
AS   
BEGIN   
IF NOT EXISTS (SELECT * FROM AlbumMaster WHERE AlbumName=@AlbumName)   
BEGIN   
  
INSERT INTO [dbo].AlbumMaster (AlbumName ,ImageName )  
VALUES (@AlbumName ,@ImageName )  
  
Select 'Inserted' as results   
  
END   
ELSE   
BEGIN   
Select 'Exists' as results   
END   
  
END   