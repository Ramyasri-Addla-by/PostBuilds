$BlobUri = 'https://csg100320017998846f.blob.core.windows.net/fileupload/ImageServerFile.config'
$Sas = '?sp=racw&st=2022-06-04T19:51:59Z&se=2022-06-07T03:51:59Z&spr=https&sv=2020-08-04&sr=c&sig=7UCKY1BedlFYGQESGBJp1XeWodZe1snBGKbEHAxLjHU%3D'
$OutputPath = 'C:\DownloadedFile\ImageServerFile.config'
$FullUri = "$BlobUri$Sas"
(New-Object System.Net.WebClient).DownloadFile($FullUri, $OutputPath)