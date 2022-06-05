$FileShareUrl = 'https://csg100320017998846f.blob.core.windows.net/fileupload/TestingFile.config'
$Sas = $env:sas
$OutputPath = 'C:\DownloadedFile\TestingFile.config'
$FullUri = "$FileShareUrl$Sas"
(New-Object System.Net.WebClient).DownloadFile($FullUri, $OutputPath)