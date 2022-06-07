$StorageAccName= "csg100320017998846f"
$FileShareName="fileupload"
$DownloadFileName="ImageServerFile.config"

$Url = "https://"+$StorageAccName+.blob.core.windows.net/"+$FileShareName+"/"+$DownloadFileName"

#Sas Token from storage account
$Sas = '?sp=racw&st=2022-06-04T19:51:59Z&se=2022-06-07T03:51:59Z&spr=https&sv=2020-08-04&sr=c&sig=7UCKY1BedlFYGQESGBJp1XeWodZe1snBGKbEHAxLjHU%3D'

#path where the file is downloading
#$OutputPath = 'C:\DownloadedFile\ImageServerFile.config'
$OutputPath = 'C:\Intactix\ImageServer\IntactixImage.config'
$FullUrl = "$Url$Sas"
(New-Object System.Net.WebClient).DownloadFile($FullUrl, $OutputPath)

#Copying the downloaded file to C:ProgramFiles/Intactix.....
#Copy-Item "C:\DownloadedFile\ImageServerFile.config" -Destination "C:\Intactix\ImageServer"

#Restart WebAppPool
Start-WebAppPool -Name "IKBAppPool"