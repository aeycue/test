$azcopy = "C:\temp\azcopy.exe"
$src = "https://softwarebuilder.blob.core.windows.net/softwarerepo/Source.zip?sp=r&st=2024-09-24T19:27:53Z&se=2024-10-02T03:27:53Z&spr=https&sv=2022-11-02&sr=b&sig=ccdUS5B9dS0RnmFnvaWM8iRz3%2F6fRRkDQc50PCbKvK0%3D"
$dest = "c:\temp"

& $azcopy -copy $src $dest
expand-archive 'c:\temp\source.zip' c:\
