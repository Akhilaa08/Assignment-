--SP to select all records of Album Details

USE MusicStore   
GO   
  
-- =============================================   
-- To Select Albumdetails   
-- EXEC USP_AlbumMaster_Select ''   
-- =============================================   
CREATE PROCEDURE [dbo].[USP_AlbumMaster_Select]   
(   
@AlbumName VARCHAR(100) = ''   
)   
AS   
BEGIN   
SELECT AlbumID,AlbumName , ImageName  
FROM AlbumMaster   
WHERE   
AlbumName like @AlbumName +'%'   
Order By AlbumName  
END   

