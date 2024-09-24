New-Item -Type Directory -Path 'c:\' -Name temp -erroraction:ignore
invoke-webrequest -uri 'https://aka.ms/downloadazcopy-v10-windows' -OutFile 'c:\temp\azcopy.zip'
Expand-Archive 'c:\temp\azcopy.zip' 'c:\temp'
copy-item 'C:\temp\azcopy_windows_amd64_*\azcopy.exe\' -Destination 'c:\temp'
