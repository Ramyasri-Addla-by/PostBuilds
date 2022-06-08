$StorageAccName= "str13"
$FileShareName="imageserver"
$DownloadFileName="IntactixImageServer.config"

$Url = "https://"+$StorageAccName+".file.core.windows.net/"+$FileShareName+"/"+$DownloadFileName

#Sas Token from storage account
$Sas = '?sv=2020-08-04&ss=bfqt&srt=sco&sp=rwdlacupitfx&se=2022-06-08T20:11:48Z&st=2022-06-08T12:11:48Z&spr=https&sig=DPsGv6kT%2Br8g1hWFpcL2QTJs1V5WlPU4mpdGRWUNx2c%3D'

#path where the file is downloading
#$OutputPath = 'C:\DownloadedFile\ImageServerFile.config'
$OutputPath = 'C:\Tools\ImageServer\IntactixImageServer.config'
$FullUrl = "$Url$Sas"
(New-Object System.Net.WebClient).DownloadFile($FullUrl, $OutputPath)

#Copying the downloaded file to C:ProgramFiles/Intactix.....
#Copy-Item "C:\DownloadedFile\ImageServerFile.config" -Destination "C:\Intactix\ImageServer"

#Restart WebAppPool
#Start-WebAppPool -Name "IKBAppPool"