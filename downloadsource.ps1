cd c:\temp
$azcopy = "C:\temp\azcopy.exe"
$src = "https://softwarebuilder.blob.core.windows.net/softwarerepo/Source.zip?sp=r&st=2024-09-25T19:05:45Z&se=2024-12-07T04:05:45Z&spr=https&sv=2022-11-02&sr=b&sig=I21nTcYVk11jmHbjCbwxzbLncbFwz8YmO5DIRt2u3o8%3D"
$dest = "c:\temp"
.\azcopy copy $src $dest
expand-archive 'c:\temp\source.zip' c:\
