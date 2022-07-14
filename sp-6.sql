-- 4) Update all MusicPlayerMaster records    

Create PROCEDURE [dbo].[USP_MusicAlbum_Delete]                                                
   (  
     @musicID       VARCHAR(20)     = ''
      )                                                          
AS                                                                  
BEGIN         
     Delete from  [MusicPlayerMaster]   WHERE  musicID  = @musicID                 
            Select 'Deleted' as results  
END  