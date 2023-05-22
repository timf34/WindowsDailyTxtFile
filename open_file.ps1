$FolderPath = "C:\Your\Specific\Folder"
$FileName = Get-Date -Format "MM-dd-yyyy"
$FullPath = Join-Path -Path $FolderPath -ChildPath "$FileName.txt"

if (Test-Path $FullPath) {
    Start-Process Notepad.exe -ArgumentList $FullPath
}

# Place this at: C:\Users\[Your User Name]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
