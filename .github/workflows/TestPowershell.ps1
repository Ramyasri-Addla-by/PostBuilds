$key= '+0tLw4rPCHT5FuGnVE3rSWEkVHnVj/Zw4Itt0QPF9gfY34uipylDH1bCoUEcSGVJgNC3v/kBW2bTSRU5hZ9WnA=='

$blobUrL= 'https://csg100320017998846f.blob.core.windows.net/fileupload/ImageServerFile.config'

./AzCopy /Source:$blobUrL /Dest:C:\DownloadedFile /SourceKey:$key /Pattern:ImageServerFile.config